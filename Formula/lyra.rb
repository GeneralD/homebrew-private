class Lyra < Formula
  desc "Desktop lyrics overlay and video wallpaper for macOS"
  homepage "https://github.com/GeneralD/lyra"
  url "https://github.com/GeneralD/lyra/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "2d6cacc724f639c84f95d70c14ec8161cc1eae69d6d46f16e86a68764a604d74"

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