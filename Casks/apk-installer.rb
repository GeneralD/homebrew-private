cask 'apk-installer' do
  version :latest
  sha256 :no_check

  url 'https://codeload.github.com/GeneralD/MobileAppInstallers/zip/master'
  name 'APK Installer'
  homepage 'https://github.com/GeneralD/MobileAppInstallers'
  depends_on cask: 'android-sdk'

  app 'MobileAppInstallers-master/APK Installer.app'
end