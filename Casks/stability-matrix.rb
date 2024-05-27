cask 'stability-matrix' do
    version :latest
    sha256 :no_check
    
    url "https://github.com/LykosAI/StabilityMatrix/releases/latest/download/StabilityMatrix-macos-arm64.dmg"
    
    name 'Stability Matrix'
    homepage 'https://lykos.ai/'
    
    app 'Stability Matrix.app'
    
    uninstall delete: [
        '/Applications/Stability Matrix.app',
    ]
    zap trash: [
        '~/Library/Application Support/StabilityMatrix',
        '~/Library/Saved Application State/StabilityMatrix.Avalonia.savedState',
    ]
    end