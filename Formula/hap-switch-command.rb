# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HapSwitchCommand < Formula
  desc "This app provides homekit virtual switch devices executing local commands."
  homepage "https://github.com/legnoh/hap-switch-command"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.7/hap-switch-command_0.0.7_darwin_amd64.tar.gz"
      sha256 "bfa6c0236e718d5e7be2f76847701b94e3b54ab9ebddbe8796bd700020ab03d2"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.7/hap-switch-command_0.0.7_darwin_arm64.tar.gz"
      sha256 "4fa5ed475c92c3f6f8a035f06649b9e0c89ac07684f6fcd23e3169297aa0d542"

      def install
        bin.install "hap-switch-command"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.7/hap-switch-command_0.0.7_linux_arm64.tar.gz"
      sha256 "9ab463375f6cce3492339b9e36f6d33b8f68726a41bd1a6ce1962daf1f6fde14"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.7/hap-switch-command_0.0.7_linux_amd64.tar.gz"
      sha256 "2250ec2fed8cf9f00c29c78c978d64d8224d8880e0c8c568284d1f2aaaa9ee5c"

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
