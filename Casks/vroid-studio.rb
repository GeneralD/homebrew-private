cask 'vroid-studio' do
  version '0.2.0'
  sha256 :no_check

  url "https://vroid.pixiv.net/dist/VRoidStudio-v#{version}-mac.zip"
  name 'VRoid Studio'
  homepage 'https://vroid.pixiv.net/'

  app "VRoidStudio.app"
end