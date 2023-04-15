class Magia < Formula
  desc "An ultimate NFT generator for the proffesionals"
  homepage "https://github.com/GeneralD/Magia"
  url "https://github.com/GeneralD/Magia/archive/refs/tags/1.0.6.tar.gz"
  sha256 "d98c8bbd52c73c527f74662765378dd31b0a7d9ebe8a829876ed663ce22e5c34"

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