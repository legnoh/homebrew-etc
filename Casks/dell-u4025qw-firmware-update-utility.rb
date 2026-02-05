cask "dell-u4025qw-firmware-update-utility" do
    version "M3T105"
    sha256 "007b5447d1da8f063dd0f8367c2ba761e3e8b61e41ba50fcb52ae74946d2e645"
  
    url "https://dl.dell.com/FOLDER13750555M/1/Dell_U4025QW_FWUpdate_#{version}_Mac.pkg"
    name "Firmware Update Package for U4025QW monitor."
    desc "Firmware Update Package for U4025QW monitor."
    homepage "https://www.dell.com/support/home/en-us/drivers/driversdetails?driverid=r7c3k&oscode=mac1&productcode=u4025qw-monitor"
  
    pkg "Dell_U4025QW_FWUpdate_#{version}_Mac.pkg"
  
    uninstall pkgutil: "com.dell.firmware.u4025qw"
  end
