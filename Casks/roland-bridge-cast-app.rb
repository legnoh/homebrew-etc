cask "roland-bridge-cast-app" do
    version "5.00"
    sha256 "4a06bac48152318952421fcdaf51fac33664e6ceacfa940a675e60b5ba463ac1"
  
    url "https://static.roland.com/assets/media/zip/bridgecast_app_m#{version.delete(".")}.zip"
    name "Roland Bridge Cast App"
    desc "Roland Bridge Cast App"
    homepage "https://www.roland.com/jp/support/by_product/bridge_cast_x/updates_drivers/"
  
    depends_on macos: ">= :big_sur"

    app "BRIDGE CAST.app"
    pkg "BridgeCastXV2USBDriver/BridgeCastXV2_USBDriver12.pkg"

    preflight do
        system_command "/usr/bin/tar", args: [
            "--directory=#{staged_path}",
            "--extract",
            "--bzip2",
            "--file=#{staged_path}/BRIDGE CAST.app/Contents/Resources/bridgecastxv2_mac12drv_m200.tgz"
        ]
    end

    uninstall script: {
        executable: "#{staged_path}/BridgeCastXV2USBDriver/Uninstaller.app/Contents/Resources/Script"
    }

    caveats do
        reboot
    end
end
