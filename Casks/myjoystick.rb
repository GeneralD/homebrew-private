cask 'myjoystick' do
  version :latest
  sha256 :no_check
    
  url 'http://myossoftware.com/source/myjoystick.dmg'
  name 'MyJoystick.app'
  homepage 'http://myossoftware.com/post/myjoystick'

  app 'MyJoystick.app'
  
  zap delete: [
                '~/Library/Application Scripts/com.myossoftware.MyGamepad',
                '~/Library/Caches/com.myossoftware.MyGamepad',
                '~/Library/Containers/com.myossoftware.MyGamepad',
                '~/Library/Cookies/com.myossoftware.MyGamepad.binarycookies'
      ],
      trash: [
                '~/Library/Preferences/com.myossoftware.MyGamepad.plist'
      ]
  
end