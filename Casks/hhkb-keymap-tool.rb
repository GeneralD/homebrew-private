cask 'hhkb-keymap-tool' do
  version '110'
  sha256 :no_check

  url "https://origin.pfultd.com/downloads/hhkb/mac/HHKBkeymapTool_#{version}ma.dmg"
  name 'Happy Hacking Keyboard Keymap Tool'
  homepage 'https://happyhackingkb.com/download'

#   pkg "HHKBkeymapTool_#{version}ma.pkg"
  app 'Happy Hacking Keyboard Keymap Tool.app'

  zap delete: [
    '~/Library/Application Support/hhkb-keymap-tool'
  ],
  trash: [
    '~/Library/Preferences/jp.co.pfu.hhkb-keymap-tool.plist'
  ]
end
