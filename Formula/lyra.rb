class Lyra < Formula
  desc "Desktop lyrics overlay and video wallpaper for macOS"
  homepage "https://github.com/GeneralD/lyra"
  url "https://github.com/GeneralD/lyra/archive/refs/tags/v2.3.0.tar.gz"
  sha256 "08be996d3cc8fc148bbee4e6b3f234d839175b26e8e31209b7c16d023c4f32a2"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"

    build_dir = Utils.safe_popen_read("swift", "build", "--disable-sandbox", "--show-bin-path", "-c", "release").strip

    libexec.install "#{build_dir}/lyra"
    Dir["#{build_dir}/*.bundle"].each { |b| libexec.install b }

    (bin/"lyra").write_env_script libexec/"lyra", {}

    output = Utils.safe_popen_read(libexec/"lyra", "completion", "zsh")
    (zsh_completion/"_lyra").write output

    output = Utils.safe_popen_read(libexec/"lyra", "completion", "bash")
    (bash_completion/"lyra").write output

    output = Utils.safe_popen_read(libexec/"lyra", "completion", "fish")
    (fish_completion/"lyra.fish").write output
  end

  service do
    run [opt_libexec/"lyra", "daemon"]
    keep_alive true
    log_path var/"log/lyra.log"
    error_log_path var/"log/lyra.log"
  end

  def caveats
    <<~EOS
      To start lyra as a background service:
        brew services start lyra

      Or start manually:
        lyra start
    EOS
  end

  def post_uninstall
    %w[com.generald.lyra homebrew.mxcl.lyra].each do |label|
      quiet_system "launchctl", "bootout", "gui/#{Process.uid}/#{label}"
      plist = Pathname.new(Dir.home)/"Library/LaunchAgents/#{label}.plist"
      plist.delete if plist.exist?
    end
  end

  test do
    system libexec/"lyra", "version"
  end
end