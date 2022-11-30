cask 'dotec-deegate' do
    version :latest
    sha256 :no_check
  
    url "https://dotec-audio.com/release/?p=DeeGate&o=mac"
    name 'OneComme'
    homepage 'https://dotec-audio.com/deegate.html'
  
    pkg "install.pkg"
  
    uninstall pkgutil: 'com.dotec-audio.DeeGate'
end
