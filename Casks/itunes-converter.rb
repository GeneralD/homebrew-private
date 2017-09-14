cask 'itunes-converter' do
  version :latest
  sha256 :no_check

  url 'http://www.macsome.com/iTunesConverter.dmg'
  name 'iTunes Converter'
  homepage 'http://www.macsome.com/itunes-converter-mac'

  app 'iTunes Converter.app'
  
  zap delete: [
    '~/Library/Application Support/iTunes Converter',
    '~/Library/Caches/com.macsome.iTunesConverter'
  ],
  trash: [
    '~/Library/Preferences/com.macsome.iTunesConverter.plist'
  ]
end