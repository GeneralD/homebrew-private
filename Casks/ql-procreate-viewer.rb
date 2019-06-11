cask 'ql-procreate-viewer' do
  version :latest
  sha256 :no_check

  url 'https://jaromvogel.com/ProcreateViewer.pkg'
  name 'ProcreateViewer'
  homepage 'https://jaromvogel.com/ProcreateViewer'

  uninstall pkgutil: 'com.jaromvogel.procreateviewer'
end
