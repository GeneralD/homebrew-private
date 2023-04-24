class Magia < Formula
  desc "An ultimate NFT generator for the proffesionals"
  homepage "https://github.com/GeneralD/Magia"
  url "https://github.com/GeneralD/Magia/archive/refs/tags/1.0.7.tar.gz"
  sha256 "ac08836048f06651eb240d9c49405651dc8d1a425da7f97a9a8b69f422b1a730"

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