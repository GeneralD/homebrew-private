cask 'townwifi' do
  version :latest
  sha256 :no_check

  url 'https://storage.googleapis.com/townwifi-downloads/mac/installer/TownWifi.pkg'
  name 'TownWifi'
  homepage 'http://townwifi.jp'

  pkg 'TownWifi.pkg'

  uninstall pkgutil: 'jp.townwifi.townwifi'

  zap delete: [
    '~/Library/Application Support/jp.townwifi.townwifi',
    '~/Library/Caches/jp.townwifi.townwifi',
    '~/Library/Preferences/com.company.appname.plist'
  ]

  trash: [
    '~/Library/Preferences/jp.townwifi.townwifi.plist'
  ]
end