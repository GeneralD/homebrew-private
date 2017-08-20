cask 'consulo' do
  version :latest
  sha256 :no_check
    
  url 'https://hub.consulo.io/api/repository/download?channel=release&platformVersion=SNAPSHOT&id=consulo-mac64'
  name 'Consulo'
  homepage 'https://consulo.io'

  app 'Consulo.app'
  
  zap delete: [
                '~/Library/Application Support/Consulo',
                '~/Library/Caches/Consulo',
                '~/Library/Logs/Consulo'
      ],
      trash: [
                '~/Library/Preferences/Consulo'
      ]
  
end