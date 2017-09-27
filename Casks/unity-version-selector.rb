cask 'unity-version-selector' do
  version :latest
  sha256 :no_check

  url 'https://codeload.github.com/GeneralD/Unity-Version-Selector/zip/master'
  name 'Unity Version Selector'
  homepage 'https://github.com/GeneralD/Unity-Version-Selector'
  depends_on formula: 'coreutils'
  
  app ['Unity-Version-Selector-master/Unity Version Selector.app',
       'Unity-Version-Selector-master/Unity Version Selector 2017.app']
end