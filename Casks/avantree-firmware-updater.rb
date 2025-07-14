cask "avantree-firmware-updater" do
    version :latest
    sha256 :no_check
  
    url "https://dfu-data.avantree.com/avantronics/desktop/version/Avantree%20Upgrade%20Tool.pkg"
    name "Roland Bridge Cast App"
    desc "Roland Bridge Cast App"
    homepage "https://www.roland.com/jp/support/by_product/bridge_cast_x/updates_drivers/"
  
    depends_on macos: ">= :big_sur"

    pkg "Avantree Upgrade Tool.pkg"

    uninstall pkgutil: 'com.avantronics.dfu'
    uninstall delete: '/Applications/Avantree Firmware Updater.app'
end
