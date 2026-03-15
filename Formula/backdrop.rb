class Backdrop < Formula
  desc "Desktop lyrics overlay and video wallpaper for macOS"
  homepage "https://github.com/GeneralD/backdrop"
  url "https://github.com/GeneralD/backdrop/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "5880f0935c83f3b5171bd46f6a0562848a0179e2ba3467f75939098f948f52ec"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"

    build_dir = Utils.safe_popen_read("swift", "build", "--show-bin-path", "-c", "release").strip

    libexec.install Dir["#{build_dir}/backdrop"]
    libexec.install Dir["#{build_dir}/*.bundle"]

    (bin/"backdrop").write_env_script libexec/"backdrop", {}

    output = Utils.safe_popen_read(libexec/"backdrop", "completion", "zsh")
    (zsh_completion/"_backdrop").write output

    output = Utils.safe_popen_read(libexec/"backdrop", "completion", "bash")
    (bash_completion/"backdrop").write output

    output = Utils.safe_popen_read(libexec/"backdrop", "completion", "fish")
    (fish_completion/"backdrop.fish").write output
  end

  test do
    system libexec/"backdrop", "version"
  end
end
