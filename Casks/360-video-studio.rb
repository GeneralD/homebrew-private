cask '360-video-studio' do
  version '2.12.1'
  sha256 :no_check

  url 'https://static.insta360.com/software/Studio/Mac/Insta360Studio_Mac_#{version}.pkg'
  name 'Insta360 Studio'
  homepage 'https://www.insta360.com/'

  pkg 'Insta360Studio_Mac_#{version}.pkg'

  uninstall pkgutil: 'com.arashivision.Insta360Studio'

  zap delete: [
    '~/Library/Application Support/Insta360Studio',
    '~/Library/Caches/Insta360Studio',
  ], trash: [
    '~/Library/Preferences/Insta360Studio.plist'
  ]
end