cask 'townwifi' do
  version :latest
  sha256 :no_check

  url 'https://storage.googleapis.com/townwifi-downloads/mac/installer/TownWifi.pkg'
  name 'TownWifi'
  homepage 'http://townwifi.jp'
  
  pkg 'TownWifi.pkg'
end