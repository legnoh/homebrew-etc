cask "avantree-firmware-updater" do
    version :latest
    sha256 :no_check
  
    url "https://dfu-data.avantree.com/avantronics/desktop/version/Avantree%20Upgrade%20Tool.pkg"
    name "Avantree Firmware Updater"
    desc "Avantree Firmware Updater"
    homepage "https://avantree.com/pages/firmware-updates/9798097109285"
  
    depends_on macos: ">= :big_sur"

    pkg "Avantree Upgrade Tool.pkg"

    uninstall pkgutil: 'com.avantronics.dfu'
    uninstall delete: '/Applications/Avantree Firmware Updater.app'
end
