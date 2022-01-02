cask 'eid-jp-mynaportal' do
    version :latest
    sha256 :no_check
  
    url 'https://img.myna.go.jp/tools/mac/MynaPortalAppSetup.dmg'
    name 'MynaPortal'
    name 'Electronic identity card software for Japan MyNumber'
    name 'eID Japan MyNumberPortal Client'
    homepage 'https://myna.go.jp/'
  
    depends_on macos: '>= 10.11.6'
  
    pkg 'MynaPortalAppSetup.pkg'
  
    uninstall pkgutil: 'jp.go.cao.mpa'
end
