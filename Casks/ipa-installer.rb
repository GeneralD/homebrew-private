cask 'ipa-installer' do
  version :latest
  sha256 :no_check

  url 'https://codeload.github.com/GeneralD/MobileAppInstallers/zip/master'
  name 'IPA Installer'
  homepage 'https://github.com/GeneralD/MobileAppInstallers'

  app 'MobileAppInstallers-master/IPA Installer.app'
end