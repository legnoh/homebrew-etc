class AppleCalendarCli < Formula
  desc "One-shot macOS Calendar (EventKit) exporter (text/JSON)"
  homepage "https://github.com/legnoh/apple-calendar-cli"
  url "https://github.com/legnoh/apple-calendar-cli/releases/download/v0.1.0/apple-calendar-cli-v0.1.0-universal.tar.gz"
  version "0.1.0"
  sha256 "c33f1178fec253ca986d1bcf48a3d99af6a1a18c01309c06babc1cecb30fe908"
  license "MIT"

  def install
    bin.install "apple-calendar"
    # Optional: ship README (not required)
    (prefix/"README.txt").write <<~EOS
      See: https://github.com/legnoh/apple-calendar-cli
    EOS
  end

  test do
    system "#{bin}/apple-calendar", "--help"
  end
end
