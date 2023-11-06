cask 'snap-camera' do
  version '1.21.0'
  sha256 '0b97133d09d260318b92f7bb097e6c9185e00bc66ad997a228ae4f03ad47498c'

  url "https://www.dropbox.com/scl/fi/1spgifeqb6utjnrtz0uid/Snap-Camera-1.21.0.pkg?rlkey=1vl30recl1dxjouoexe2476xp&dl=1"

  name 'Snap Camera'
  homepage 'https://help.snapchat.com/hc/en-us/articles/7012304217876-Snap-Camera'

  pkg "Snap Camera #{version}.pkg"

  uninstall pkgutil: 'com.snap.SnapCamera',
            quit:    'com.snap.SnapCamera',
            signal:  [
                        ['KILL', 'com.snap.SnapCamera'],
                    ],
            delete:  [
                        '/Applications/Snap Camera.app',
                        '/Library/CoreMediaIO/Plug-Ins/DAL/SnapCamera.plugin',
                    ],
            launchctl: [
                        'com.snap.AssistantService',
                        'com.snap.SnapCameraRemover',
                        'com.snap.SnapCameraAutoLaunch',
                    ]
  zap trash: [
    '~/Library/Application Support/Snap Camera',
    '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.snap.snapcamera.sfl*',
    '~/Library/Caches/Snap/Snap Camera',
    '~/Library/Preferences/Snap/Snap Camera',
    '~/Library/Preferences/com.snap.SnapCamera.plist',
    '~/Library/Saved Application State/com.snap.SnapCamera.savedState',
  ]
end