cask 'stationtv-link' do
  version '1.0.7,107'
  sha256 :no_check
    
  url "http://download.pixela.co.jp/products/tv_capture/stationtv_link/data/stationtvlink_#{version.after_comma}.dmg"
  name 'StationTV Link'
  homepage 'http://www.pixela.co.jp/products/tv_capture/stationtv_link'

  app 'StationTV Link.app'
end