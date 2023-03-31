cask 'onecomme' do
    version "4.3.4"
    sha256 :no_check

    url "https://storage.onecomme.com/OneCommeSetup-#{version}.pkg"
    name 'OneComme'
    homepage 'https://onecomme.com/'
  
    pkg "OneCommeSetup-#{version}.pkg"
  
    uninstall pkgutil: 'dog.astie.live-comment-viewer'
end
