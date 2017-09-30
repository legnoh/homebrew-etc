cask 'audacity' do
  version '2.1.3'
  sha256 '6788df1e8e7c494c5cfbc64e3c7417ac6a73591df343fc1e21c8040ecee30dda'

  url "https://www.fosshub.com/Audacity.html/audacity-macos-#{version}.dmg"
  name 'Audacity'
  homepage 'http://www.audacityteam.org/'

  depends_on macos: '>= :snow_leopard'

  app 'Audacity.app'

  uninstall pkgutil: ['com.sourceforge.audacity.ffmpegLibrariesForAudacity.pkg', 'com.sourceforge.audacity.lameLibraryForAudacity.pkg']
  zap delete: '~/Library/Application Support/audacity'
end
