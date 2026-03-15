class Backdrop < Formula
  desc "Desktop lyrics overlay and video wallpaper for macOS"
  homepage "https://github.com/GeneralD/backdrop"
  url "https://github.com/GeneralD/backdrop/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "5880f0935c83f3b5171bd46f6a0562848a0179e2ba3467f75939098f948f52ec"

  def install
    system "make", "install", "PREFIX=#{prefix}"

    output = Utils.safe_popen_read(bin/"backdrop", "completion", "zsh")
    (zsh_completion/"_backdrop").write output

    output = Utils.safe_popen_read(bin/"backdrop", "completion", "bash")
    (bash_completion/"backdrop").write output

    output = Utils.safe_popen_read(bin/"backdrop", "completion", "fish")
    (fish_completion/"backdrop.fish").write output
  end

  test do
    system "#{bin}/backdrop", "version"
  end
end
