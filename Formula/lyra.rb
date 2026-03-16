class Lyra < Formula
  desc "Desktop lyrics overlay and video wallpaper for macOS"
  homepage "https://github.com/GeneralD/lyra"
  url "https://github.com/GeneralD/lyra/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "8adfd1cc2ed236356744242955eb7936662949d85ce55ff7b337b0dccfb013f4"

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

  test do
    system libexec/"lyra", "version"
  end
end