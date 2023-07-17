# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HapSwitchCommand < Formula
  desc "This app provides homekit virtual switch devices executing local commands."
  homepage "https://github.com/legnoh/hap-switch-command"
  version "0.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.10/hap-switch-command_0.0.10_darwin_arm64.tar.gz"
      sha256 "8947ee55f4539778c7a0cf22803438539784d91f45fac8db6aea12d4668c8e12"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.10/hap-switch-command_0.0.10_darwin_amd64.tar.gz"
      sha256 "33e515a1f325037f308fd069328471196e3b8e5c1cb6b37cdeb7ccfd74331c73"

      def install
        bin.install "hap-switch-command"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.10/hap-switch-command_0.0.10_linux_arm64.tar.gz"
      sha256 "fc63bf11f00ab4c8b58cac2e707a1c36e4e421d5143ca6c578313d1843251697"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.10/hap-switch-command_0.0.10_linux_amd64.tar.gz"
      sha256 "f7a5b4304386d444740f4859a3a77f874a7fc8a533e6fa08d943c5fd567c54f7"

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
