class Backdrop < Formula
  desc "Desktop lyrics overlay and video wallpaper for macOS"
  homepage "https://github.com/GeneralD/backdrop"
  url "https://github.com/GeneralD/backdrop/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "7aa53e92a0d1bf3303f596fb374a6844c2a853c60b0b70eac3c04c0b2723387c"

  option "without-completions", "Disable zsh completions"

  def install
    system "make", "install", "PREFIX=#{prefix}"

    if build.with? "completions"
      generate_completions_from_executable(bin/"backdrop", "completion", shell_parameter_format: :none, shells: [:zsh, :bash, :fish])
    end
  end

  def uninstall
    system "make", "uninstall", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/backdrop", "version"
  end
end
