# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HapSwitchCommand < Formula
  desc "This app provides homekit virtual switch devices executing local commands."
  homepage "https://github.com/legnoh/hap-switch-command"
  version "0.0.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.15/hap-switch-command_0.0.15_darwin_amd64.tar.gz"
      sha256 "9947ba6065b36068b860c4b80316d6002dab72bbe25566e5117748232cd92205"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.15/hap-switch-command_0.0.15_darwin_arm64.tar.gz"
      sha256 "3b639f95e45f068e8ea101a9723017f1d273edf02bba1080194f86f1fdf6806f"

      def install
        bin.install "hap-switch-command"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.15/hap-switch-command_0.0.15_linux_amd64.tar.gz"
      sha256 "e855b5fdefc295678a6bd1de29c387fcb088f38723336e819c44cf112ff19a6b"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.15/hap-switch-command_0.0.15_linux_arm64.tar.gz"
      sha256 "c5d7a3e89e8aa3e164b377eaa51552a848e199a3ba02cae37bc35b03a6c1c4c2"

      def install
        bin.install "hap-switch-command"
      end
    end
  end

  def caveats
    <<~EOS
      Please check usage at README:
          https://github.com/legnoh/hap-switch-command/blob/main/README.md
    EOS
  end

  service do
    run [opt_bin/"hap-switch-command", "serve"]
    keep_alive true
    log_path var/"log/hap-switch-command.log"
    error_log_path var/"log/hap-switch-command.log"
  end

  test do
    system "#{bin}/hap-switch-command --help"
  end
end
