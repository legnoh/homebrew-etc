cask "rode-caster" do
    version "2.0.94"
    sha256 :no_check
  
    url "https://update.rode.com/rc-app/RODECaster_App_MACOS.zip"
    name "Rode Caster"
    desc "RØDECaster Companion app"
    homepage "https://rode.com/en/apps/rodecaster-app"
  
    livecheck do
      url "https://update.rode.com/rode-devices-manifest.json"
      strategy :json do |json|
        json.dig("rc-app-manifest", "macos", "main-version", "update-version")
      end
    end
  
    depends_on macos: ">= :catalina"
  
    pkg "RØDECaster App.pkg"
  
    preflight do
      staged_path.glob("RØDECaster App*.pkg")&.first&.rename(staged_path/"RØDECaster App.pkg")
    end
  
    uninstall pkgutil: "com.rodecastercomp.installer"
  
    zap trash: [
      "~/Library/Caches/com.rode.rodecastercomp",
      "~/Library/HTTPStorages/com.rode.rodecastercomp",
    ]
  end
