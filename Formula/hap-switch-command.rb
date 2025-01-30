# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HapSwitchCommand < Formula
  desc "This app provides homekit virtual switch devices executing local commands.
"
  homepage "https://github.com/legnoh/hap-switch-command"
  version "0.0.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.32/hap-switch-command_0.0.32_darwin_amd64.tar.gz"
      sha256 "78f322c0c465bc9567345a20baea60487c58aff35b5eaef420bf556aa7a93a73"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.32/hap-switch-command_0.0.32_darwin_arm64.tar.gz"
      sha256 "7c91fc6069459b997829314231522d8e74016e33b848f6c71c4520d724d9d355"

      def install
        bin.install "hap-switch-command"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.32/hap-switch-command_0.0.32_linux_amd64.tar.gz"
        sha256 "3522c4511402fffc7d6acc58ceced78f0216c64b7666ee152e81cc18b3b4f586"

        def install
          bin.install "hap-switch-command"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.32/hap-switch-command_0.0.32_linux_arm64.tar.gz"
        sha256 "c5b9cf09d59fd79f8cf421876a40dbc5fce5fe3a6f6cab5c7bdb730ed59f04d7"

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
