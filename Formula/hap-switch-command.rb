# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HapSwitchCommand < Formula
  desc "This app provides homekit virtual switch devices executing local commands."
  homepage "https://github.com/legnoh/hap-switch-command"
  version "0.0.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.17/hap-switch-command_0.0.17_darwin_arm64.tar.gz"
      sha256 "1ce7e705d451ecc77ae4ef3fdc7849f1f64c86b07427d2bcf5737f514571c5da"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.17/hap-switch-command_0.0.17_darwin_amd64.tar.gz"
      sha256 "180c85b0d8f87bab4d8eb1be152864e2fa7db65deded3306e3d96f91e9a85d50"

      def install
        bin.install "hap-switch-command"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.17/hap-switch-command_0.0.17_linux_amd64.tar.gz"
      sha256 "03c110bfb0624309cbb0f90f914f613fcc42f3e6a846488c2afd95733312745b"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.17/hap-switch-command_0.0.17_linux_arm64.tar.gz"
      sha256 "ff99f3c618d48df022658b6a555666e33f1712297f0ea2e9b0f06210dcf08ebb"

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
