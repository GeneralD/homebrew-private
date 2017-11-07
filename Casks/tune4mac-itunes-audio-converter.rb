cask 'tune4mac-itunes-audio-converter' do
  version :latest
  sha256 :no_check

  url 'http://www.noteburner.com/noteburner-itunes-drm-audio-converter.dmg'
  name 'Tune4Mac iTunes Audio Converter'
  homepage 'http://www.tune4mac.com/mac-itunes-audio-converter'

  app 'Tune4Mac iTunes Audio Converter.app'

  zap delete: [
    '~/Library/Application Support/Tune4Mac iTunes Audio Converter',
    '~/Library/Caches/com.tune4mac.AudiobookConverter'
  ],
  trash: [
    '~/Library/Preferences/com.tune4mac.AudiobookConverter.plist'
  ]
end
