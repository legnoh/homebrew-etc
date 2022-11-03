cask 'logi-tune' do
    version :latest
    sha256 :no_check
  
    url "https://software.vc.logitech.com/downloads/tune/LogiTuneInstaller.dmg"
    name 'Logi Tune'
    homepage 'https://www.logicool.co.jp/ja-jp/video-collaboration/software/logi-tune-software.html'

    installer manual: "LogiTuneInstaller.app"

    uninstall pkgutil: 'com.logitech.logitune'
end
