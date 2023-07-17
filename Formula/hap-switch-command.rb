# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HapSwitchCommand < Formula
  desc "This app provides homekit virtual switch devices executing local commands."
  homepage "https://github.com/legnoh/hap-switch-command"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.3/hap-switch-command_0.0.3_darwin_arm64.tar.gz"
      sha256 "39e6f9e88d06405427750e767b39c2cb1d3652ab065351f71404acaddd86cbc3"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.3/hap-switch-command_0.0.3_darwin_amd64.tar.gz"
      sha256 "ba32580e26340551c2d9d0508dc6b88a1a280ecaca51b7d8dc13efa0859defda"

      def install
        bin.install "hap-switch-command"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.3/hap-switch-command_0.0.3_linux_arm64.tar.gz"
      sha256 "283385a178e03c26cce3fba0bc1f3021f9a3e447264bea5e36e0c409c0b24de8"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.3/hap-switch-command_0.0.3_linux_amd64.tar.gz"
      sha256 "0bf84e36d1b7058531fc9ac91e58186c6e70ec4d29f1c1774c97d25b62a897e9"

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
    user = ENV["USER"]
    if OS.mac?
      home_dir = "/Users/#{user}"
    elsif OS.linux?
      home_dir = "/home/#{user}"
    end
    run [opt_bin/"hap-switch-command", "serve"]
    keep_alive true
    log_path var/"log/hap-switch-command.log"
    error_log_path var/"log/hap-switch-command.log"
  end

  test do
    system "#{bin}/hap-switch-command --help"
  end
end
