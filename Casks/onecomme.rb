cask 'onecomme' do
    version "4.0.1"
    sha256 :no_check
  
    url "https://storage.onecomme.com/OneCommeSetup-x64-#{version}.pkg"
    name 'OneComme'
    homepage 'https://onecomme.com/'
  
    pkg "OneCommeSetup-x64-#{version}.pkg"
  
    uninstall pkgutil: 'dog.astie.live-comment-viewer'
end
