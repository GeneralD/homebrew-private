class Sutra < Formula
  desc "Simple and customizable template engine"
  homepage "https://github.com/GeneralD/Sutra"
  url "https://github.com/GeneralD/Sutra/archive/refs/tags/1.0.0.tar.gz"
  sha256 "484a629d766a7b885d176edc420932d0f0c9aff97de61a829b18974070dd8ad3"

  option "without-completions", "Disable zsh completions"

  def install
    system "make", "install", "PREFIX=#{prefix}"

    if build.with? "completions"
      generate_completions_from_executable(bin/"sutra", "completions", shell_parameter_format: :none, shells: [:zsh])
    end
  end

  def uninstall
    system "make", "uninstall", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/sutra", "version"
  end
end