class AppleCalendarCli < Formula
  desc "One-shot macOS Calendar (EventKit) exporter (text/JSON)"
  homepage "https://github.com/legnoh/apple-calendar-cli"
  url "https://github.com/legnoh/apple-calendar-cli/releases/download/v0.0.3/apple-calendar-cli-v0.0.3-universal.tar.gz"
  version "0.0.3"
  sha256 "b74db4bedcbff426137d70d7405903b72d6ea55ea54f31fb927b1989e26d1629"
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
