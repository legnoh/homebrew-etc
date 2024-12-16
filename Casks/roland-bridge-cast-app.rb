cask "roland-bridge-cast-app" do
    version "4.03"
    sha256 "ef8dab6fc1cc53d116491449c19c1d7f6f17d1f36c37963b36f0fa3aea7f42b5"
  
    url "https://static.roland.com/assets/media/zip/bridgecast_app_m#{version.delete(".")}.zip"
    name "Bridge Cast App"
    name "Roland Bridge Cast App"
    desc "Roland Bridge Cast App"
    homepage "https://www.roland.com/jp/support/by_product/bridge_cast_x/updates_drivers/87c7062a-9baf-4dcd-9233-b1c7b322385e/"
  
    depends_on macos: ">= :big_sur"

    app "BRIDGE CAST.app"
end
