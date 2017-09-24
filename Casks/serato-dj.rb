cask 'serato-dj' do
  version '1.9.8'
  sha256 'bbf86bfeff88580ae2190e81311f2d5483ce84bdfe2405cbae37e40769dc1d9f'

  url "https://serato.com/downloads/files/146221/Serato+DJ+#{version}.dmg", useragent: :fake
  name 'Serato DJ'
  homepage 'https://serato.com/dj'

  depends_on macos: '>= :yosemite'

  app 'Serato DJ.app'
  zap delete: [
                '~/Library/Application Support/Serato',
                '~/Music/_Serato_',
                '~/Music/_Serato_Backup'
              ]
end
