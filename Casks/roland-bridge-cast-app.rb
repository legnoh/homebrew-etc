cask "roland-bridge-cast-app" do
    version "3.03"
    sha256 "2d80ed747e206fa144667f4cd571bf94a3c13a1aaa1ba24ae8642e738ebdf168"
  
    url "https://static.roland.com/assets/media/zip/bridgecast_app_m303.zip"
    name "Bridge Cast App"
    name "Roland Bridge Cast App"
    desc "Roland Bridge Cast App"
    homepage "https://www.roland.com/jp/support/by_product/bridge_cast_x/updates_drivers/58ab8170-9872-462a-a95c-655325264217/"
  
    depends_on macos: ">= :big_sur"

    app "BRIDGE CAST.app"
end
