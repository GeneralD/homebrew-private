cask 'vroid-studio' do
  version '0.9.5'
  sha256 :no_check

  url "https://download.vroid.com/dist/VRoidStudio-v#{version}-mac.dmg"
  name 'VRoid Studio'
  homepage 'https://vroid.com/studio'

  app "VRoidStudio.app"
end
