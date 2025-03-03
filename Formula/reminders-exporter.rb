# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RemindersExporter < Formula
  desc "This app is a daemon that converts Reminders.app data into metrics in Prometheus Exporter format and provides them.

"
  homepage "https://github.com/legnoh/reminders-exporter"
  version "1.0.6"
  license "MIT"

  depends_on "reminders-cli" if OS.mac?
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/legnoh/reminders-exporter/releases/download/1.0.6/reminders-exporter_1.0.6_darwin_amd64.tar.gz"
    sha256 "0cb12448ca4f0bbe7db3b37e984f15277732ee6e77b2f5fa32e449838afc89c6"

    def install
      bin.install "reminders-exporter"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/legnoh/reminders-exporter/releases/download/1.0.6/reminders-exporter_1.0.6_darwin_arm64.tar.gz"
    sha256 "b9a57bd24c7c093feb2911f9ff6d9b4ca0f042d0b0d302aa54b0b08e7aaabb2d"

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
