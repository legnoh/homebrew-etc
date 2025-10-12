class AppleCalendarCli < Formula
  desc "One-shot macOS Calendar (EventKit) exporter (text/JSON)"
  homepage "https://github.com/legnoh/apple-calendar-cli"
  url "https://github.com/legnoh/apple-calendar-cli/releases/download/v0.0.4/apple-calendar-cli-v0.0.4-universal.tar.gz"
  version "0.0.4"
  sha256 "32f4cdd00954d9ab2eca1550fd279fe03a8bfc5e3a2387a79d5fa61441e8760f"
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
