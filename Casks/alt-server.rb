cask 'AltServer' do
  version :latest
  sha256 :no_check

  url 'https://f000.backblazeb2.com/file/altstore/altserver.dmg'
  name 'AltServer'
  homepage 'https://altstore.io/'

  app 'AltServer.app'

  zap delete: [
    '~/Library/Preferences/com.rileytestut.AltServer.plist'
  ]
end