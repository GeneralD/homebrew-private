cask 'insta360player' do
  version '2.3.6'
  sha256 :no_check

  url 'https://static.insta360.com/software/Player/Mac/Insta360Player_Mac_v#{version}.pkg'
  name 'Insta360Player'
  homepage 'https://www.insta360.com/'

  pkg 'Insta360Player_Mac_#{version}.pkg'

  uninstall pkgutil: 'com.arashivision.Insta360Player'

  zap delete: [
    '~/Library/Application Support/Insta360Player',
    '~/Library/Caches/Insta360Player',
  ], trash: [
    '~/Library/Preferences/Insta360Player.plist'
  ]
end