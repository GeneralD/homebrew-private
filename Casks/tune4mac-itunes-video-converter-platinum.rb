cask 'tune4mac-itunes-video-converter-platinum' do
  version :latest
  sha256 :no_check

  url 'http://www.tune4mac.com/download/mac-itunes-video-converter-platinum.dmg'
  name 'Tune4mac iTunes Video Converter Platinum'
  homepage 'http://www.tune4mac.com/mac-itunes-video-converter-platinum'

  app 'Tune4mac iTunes Video Converter Platinum.app'

  zap delete: [
    '~/Library/Application Support/Tune4mac iTunes Video Converter Platinum',
    '~/Library/Preferences/com.tune4mac.m4vconverterplus.plist'
  ],
  trash: [
    '~/Library/Preferences/com.tune4mac.m4vconverterplus.plist'
  ]
end