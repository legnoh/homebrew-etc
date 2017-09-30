cask 'audacity' do
  version '2.1.3'
  sha256 '088e87f8411b9de043a8e3d84a487224c901f673bc104363774362ae636bbd34'

  url "https://www.fosshub.com/Audacity.html/audacity-macos-#{version}.dmg", useragent: :fake
  name 'Audacity'
  homepage 'http://www.audacityteam.org/'

  depends_on macos: '>= :snow_leopard'

  app 'Audacity.app'

  uninstall pkgutil: ['com.sourceforge.audacity.ffmpegLibrariesForAudacity.pkg', 'com.sourceforge.audacity.lameLibraryForAudacity.pkg']
  zap delete: '~/Library/Application Support/audacity'
end
