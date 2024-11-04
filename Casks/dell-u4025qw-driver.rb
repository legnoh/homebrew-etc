cask "dell-u4025qw-driver" do
    version "A00-00"
    sha256 "d877a321fdda00e225fad78b16888dab3d0c699b8826a438a97a845a3ee4cafb"
  
    url "https://dl.dell.com/FOLDER10931001M/1/DELL_U4025QW-MONITOR_#{version}_MAC%20DRVR_632J3.pkg"
    name "Dell U4025QW Monitor driver"
    desc "This package contains the Dell U4025QW Monitor driver. The monitor driver enables the monitor to communicate with the operating system by supplying configuration information in the form of an INF file. The operating system uses this file to apply features and settings."
    homepage "https://www.dell.com/support/home/ja-jp/drivers/driversdetails?driverid=632j3&oscode=mac1&productcode=u4025qw-monitor"
  
    pkg "DELL_U4025QW-MONITOR_#{version}_MAC DRVR_632J3.pkg"
  
    uninstall pkgutil: "com.dell.u4025qw.packiccprofiles"
  end
