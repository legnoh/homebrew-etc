# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HapSwitchCommand < Formula
  desc "This app provides homekit virtual switch devices executing local commands.
"
  homepage "https://github.com/legnoh/hap-switch-command"
  version "0.0.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.37/hap-switch-command_0.0.37_darwin_amd64.tar.gz"
      sha256 "2ab81cb1c83e5a62cfea76bcff91d820d3dc64e18be2b9953f185f0de3c0e7d9"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.37/hap-switch-command_0.0.37_darwin_arm64.tar.gz"
      sha256 "c7b12358a06be86965dd70bbb495470a4795399e7f5c86e57c02e38be9272beb"

      def install
        bin.install "hap-switch-command"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.37/hap-switch-command_0.0.37_linux_amd64.tar.gz"
        sha256 "9f44a403afc53e76e3944f810e70fec7492012bf361fa23b7b4508b118251150"

        def install
          bin.install "hap-switch-command"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.37/hap-switch-command_0.0.37_linux_arm64.tar.gz"
        sha256 "2f6eeeb43f439770e17f976da79477232ac7426e0d16b6b023fc0a2f6effb4cf"

        def install
          bin.install "hap-switch-command"
        end
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
