class Backdrop < Formula
  desc "Desktop lyrics overlay and video wallpaper for macOS"
  homepage "https://github.com/GeneralD/backdrop"
  url "https://github.com/GeneralD/backdrop/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "312d9594d06ff2fc2519498f1bad76ebd7ab44029bfdeb1cfc74cc0a0d271e55"

  option "without-completions", "Disable zsh completions"

  def install
    system "make", "install", "PREFIX=#{prefix}"

    if build.with? "completions"
      generate_completions_from_executable(bin/"backdrop", "completion", shell_parameter_format: :arg, shells: [:zsh, :bash, :fish])
    end
  end

  def uninstall
    system "make", "uninstall", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/backdrop", "version"
  end
end
