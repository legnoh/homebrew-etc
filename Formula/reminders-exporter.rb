# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RemindersExporter < Formula
  desc "This app is a daemon that converts Reminders.app data into metrics in Prometheus Exporter format and provides them.

"
  homepage "https://github.com/legnoh/reminders-exporter"
  version "1.0.15"
  license "MIT"

  depends_on "reminders-cli" if OS.mac?
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/legnoh/reminders-exporter/releases/download/1.0.15/reminders-exporter_1.0.15_darwin_amd64.tar.gz"
    sha256 "6efe2b72fa646742a8645d82e57eef9facc7db8454dc9825fe99815a32c362ff"

    def install
      bin.install "reminders-exporter"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/legnoh/reminders-exporter/releases/download/1.0.15/reminders-exporter_1.0.15_darwin_arm64.tar.gz"
    sha256 "ac8103c7efcf239e0458968e38ea8112cafadd76f4c7270b8f65cf95354f8d30"

    def install
      bin.install "reminders-exporter"
    end
  end

  def caveats
    <<~EOS
      Please check usage at README:
          https://github.com/legnoh/reminders-exporter/blob/main/README.md
    EOS
  end

  service do
    run [opt_bin/"reminders-exporter", "serve"]
    keep_alive true
    log_path var/"log/reminders-exporter.log"
    error_log_path var/"log/reminders-exporter.log"
  end

  test do
    system "#{bin}/reminders-exporter --help"
  end
end
