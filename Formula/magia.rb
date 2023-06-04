class Magia < Formula
  desc "An ultimate NFT generator for the proffesionals"
  homepage "https://github.com/GeneralD/Magia"
  url "https://github.com/GeneralD/Magia/archive/refs/tags/1.0.8.tar.gz"
  sha256 "d6de3421f5e13a76e0a26ba0ca50a65a501d2f1b6a4dc6caeb75240063026b6e"

  option "without-completions", "Disable zsh completions"

  def install
    system "make", "install", "PREFIX=#{prefix}"

    if build.with? "completions"
      generate_completions_from_executable(bin/"magia", "completions", shell_parameter_format: :none, shells: [:zsh])
    end
  end

  def uninstall
    system "make", "uninstall", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/magia", "version"
  end
end