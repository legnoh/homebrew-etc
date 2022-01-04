cask "e-tax" do
  version :latest
  sha256 :no_check

  url "https://www.nta.go.jp/taxes/shiraberu/shinkoku/tokushu/jizenMac.dmg"
  name "e-Tax jizen Mac"
  desc "e-Tax prepare programs for Japan"
  homepage "https://www.nta.go.jp/taxes/shiraberu/shinkoku/tokushu/"

  depends_on macos: ">= :mojave"

  pkg "jizen_Mac.pkg"

  uninstall pkgutil: "jp.go.nta.CLSakusei"
end
