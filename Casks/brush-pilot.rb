cask 'brush-pilot' do
  version '2.1'
  sha256 :no_check
    
  url 'http://www.brushpilotapp.com/app/Brush_Pilot_2_1.zip'
  name 'Brush Pilot'
  homepage 'http://www.brushpilotapp.com/'

  app 'Brush Pilot.app'
  
  zap delete: [
                '~/Library/Caches/com.BittBox.Brush Pilot'
      ],
      trash: [
                '~/Library/Preferences/com.BittBox.Brush Pilot.plist'
      ]
  
end