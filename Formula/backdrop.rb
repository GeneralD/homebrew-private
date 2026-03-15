class Backdrop < Formula
  desc "Desktop lyrics overlay and video wallpaper for macOS"
  homepage "https://github.com/GeneralD/backdrop"
  url "https://github.com/GeneralD/backdrop/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "312d9594d06ff2fc2519498f1bad76ebd7ab44029bfdeb1cfc74cc0a0d271e55"

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
