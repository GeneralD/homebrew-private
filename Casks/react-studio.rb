require 'json'

cask 'react-studio' do
  version :latest
  sha256 :no_check

  url JSON.parse(`curl -X POST https://reactstudio.com/api/download/reactstudio`)['downloadUrl']
  name 'React Studio'
  homepage 'https://reactstudio.com'

  app 'React Studio.app'

  zap delete: [
    '~/Library/Application Support/React Studio',
    '~/Library/Saved Application State/com.neonto.ReactStudio.savedState'
  ],
  trash: [
    '~/Library/Preferences/com.neonto.ReactStudio.plist'
  ]
end
