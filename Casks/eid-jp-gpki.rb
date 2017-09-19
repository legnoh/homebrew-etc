cask 'eid-jp-gpki' do
  version :latest
  sha256 :no_check

  url 'https://www.nta.go.jp/tetsuzuki/shinkoku/shotoku/tokushu/KeyImport.dmg'
  name 'eID Japan GPKI packages provided by NTA'
  homepage 'http://www.nta.go.jp/tetsuzuki/shinkoku/shotoku/tokushu/jyunbi.htm'

  postflight do
    system_command '/usr/bin/security', args: ['add-trusted-cert', '-d', '-k', '/Library/Keychains/System.keychain', "#{staged_path}/APCA2root.der"], sudo: true
    system_command '/usr/bin/security', args: ['add-trusted-cert', '-d', '-k', '/Library/Keychains/System.keychain', "#{staged_path}/OSCA2root.der"], sudo: true
    system_command '/usr/bin/security', args: ['add-trusted-cert', '-d', '-k', '/Library/Keychains/System.keychain', "#{staged_path}/OSCAroot.der"], sudo: true
    system_command '/usr/bin/security', args: ['add-trusted-cert', '-d', '-k', '/Library/Keychains/System.keychain', '-r', 'trustAsRoot', "#{staged_path}/APCA2Sub_ocsp.der"], sudo: true
  end

  uninstall_preflight do
    system_command '/usr/bin/security', args: ['remove-trusted-cert', '-d', "#{staged_path}/APCA2root.der"], sudo: true
    system_command '/usr/bin/security', args: ['remove-trusted-cert', '-d', "#{staged_path}/OSCA2root.der"], sudo: true
    system_command '/usr/bin/security', args: ['remove-trusted-cert', '-d', "#{staged_path}/OSCAroot.der"], sudo: true
    system_command '/usr/bin/security', args: ['remove-trusted-cert', '-d', "#{staged_path}/APCA2Sub_ocsp.der"], sudo: true
  end

end
