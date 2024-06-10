cask "roland-bridge-cast-x-usb-driver" do
    version "1.0.0"
    sha256 "dd9743f9675311bec291ab1315d7a153f3025ba68500f9c73dd2d647fdea39f5"
  
    url "https://static.roland.com/assets/media/tgz/bridgecastx_mac12drv_m100.tgz"
    name "Bridge Cast X"
    name "Bridge Cast X USB Driver"
    desc "Bridge Cast X USB Driver"
    homepage "https://www.roland.com/jp/support/by_product/bridge_cast_x/updates_drivers/4bb4aec4-f962-4abd-9114-3f4368cb1e1e"
  
    depends_on macos: ">= :monterey"
  
    pkg "BridgeCastXUSBDriver/BridgeCastX_USBDriver12.pkg"

    uninstall pkgutil: [
        "jp.co.roland.BridgeCastX.audio.12.pkg",
        "jp.co.roland.BridgeCastX.midi.12.pkg",
        "jp.co.roland.BridgeCastX.setup.12.pkg",
    ]

    caveats do
        reboot
    end
end
