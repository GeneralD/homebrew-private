cask 'hhkb-keymap-tool' do
  version '110'
  sha256 :no_check

  url "https://origin.pfultd.com/downloads/hhkb/mac/HHKBkeymapTool_#{version}ma.dmg"
  name 'Happy Hacking Keyboard Keymap Tool'
  homepage 'https://happyhackingkb.com/download'

  depends_on macos: '>= :sierra'

  pkg "HHKBkeymapTool_#{version}ma.pkg"

  install delete: '/Applications/HHKB'

  uninstall quit: 'jp.co.pfu.hhkb-keymap-tool',
            pkgutil: 'jp.co.pfu.hhkb-keymap-tool.pkg.*',
            delete: '/Applications/hhkb-keymap-tool.app'

  zap delete: [
    '~/Library/Application Support/hhkb-keymap-tool'
  ],
  trash: [
    '~/Library/Preferences/jp.co.pfu.hhkb-keymap-tool.plist'
  ]
end
