class Lyra < Formula
  desc "Desktop lyrics overlay and video wallpaper for macOS"
  homepage "https://github.com/GeneralD/lyra"
  url "https://github.com/GeneralD/lyra/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "9ce36b9cd1e800d2d71dd5deedef8bb2a02836bafbeea810c07c02a33817b8d1"

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

  test do
    system libexec/"lyra", "version"
  end
end