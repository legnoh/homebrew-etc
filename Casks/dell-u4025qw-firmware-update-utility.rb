cask "dell-u4025qw-firmware-update-utility" do
    version "M3T103"
    sha256 "64a84d09793c4519216c2eb677e098367769cd33309b24b0d1594f681992330a"
  
    url "https://dl.dell.com/FOLDER12227702M/1/Dell_U4025QW_FWUpdate_#{version}_Mac.pkg"
    name "Firmware Update Package for U4025QW monitor."
    desc "Firmware Update Package for U4025QW monitor."
    homepage "https://www.dell.com/support/home/en-us/drivers/driversdetails?driverid=0j0yh&oscode=mac1&productcode=u4025qw-monitor&lwp=rt"
  
    pkg "Dell_U4025QW_FWUpdate_#{version}_Mac.pkg"
  
    uninstall pkgutil: "com.dell.firmware.u4025qw"
  end
