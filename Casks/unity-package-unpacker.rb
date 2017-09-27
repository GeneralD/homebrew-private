cask 'unity-package-unpacker' do
  version :latest
  sha256 :no_check

  url 'https://codeload.github.com/GeneralD/Unity-Package-Unpacker/zip/master'
  name 'Unity Package Unpacker'
  homepage 'https://github.com/GeneralD/Unity-Package-Unpacker'

  app 'Unity Package Unpacker.app'
end