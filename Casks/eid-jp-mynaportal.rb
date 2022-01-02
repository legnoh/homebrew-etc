cask 'eid-jp-mynaportal' do
    version :latest
    sha256 :no_check
  
    url 'https://img.myna.go.jp/tools/mac/MynaPortalAppSetup.dmg'
    name 'MynaPortal'
    name 'Electronic identity card software for Japan MyNumber'
    name 'eID Japan MyNumberPortal Client'
    homepage 'https://myna.go.jp/'
  
    depends_on macos: '>= :el_capitan'
  
    pkg 'MynaPortalAppSetup.pkg'
  
    uninstall pkgutil: 'jp.go.cao.mpa'
end
