cask 'unity-package-unpacker' do
  version :latest
  sha256 :no_check

  url 'https://github.com/GeneralD/Unity-Package-Unpacker/archive/master.zip'
  name 'Unity Package Unpacker'
  homepage 'https://github.com/GeneralD/Unity-Package-Unpacker'

  app 'Unity Package Unpacker.app'
end