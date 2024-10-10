cask "roland-bridge-cast-app" do
    version "4.02"
    sha256 "1afda64ba745f50afd221a1163258534c340e753c2c9c1012bbfd43fcf39170d"
  
    url "https://static.roland.com/assets/media/zip/bridgecast_app_m402.zip"
    name "Bridge Cast App"
    name "Roland Bridge Cast App"
    desc "Roland Bridge Cast App"
    homepage "https://www.roland.com/jp/support/by_product/bridge_cast_x/updates_drivers/24503dd4-cbbd-4e08-9503-7264cbd1fd64/"
  
    depends_on macos: ">= :big_sur"

    app "BRIDGE CAST.app"
end
