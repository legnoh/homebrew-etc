# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HapSwitchCommand < Formula
  desc "This app provides homekit virtual switch devices executing local commands."
  homepage "https://github.com/legnoh/hap-switch-command"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.5/hap-switch-command_0.0.5_darwin_arm64.tar.gz"
      sha256 "a7c8f7c27db2086ca97d62163686b1b0343640fb1dbfc97e42c7f967364b529e"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.5/hap-switch-command_0.0.5_darwin_amd64.tar.gz"
      sha256 "b1a8dd01bacf48f26541b78259e60ec19e0896cf2e029a330a7818956b52244b"

      def install
        bin.install "hap-switch-command"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.5/hap-switch-command_0.0.5_linux_arm64.tar.gz"
      sha256 "076845edbcc674f0c44f1a84cdafe40a91129652894b7de40306c208b141c4c1"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.5/hap-switch-command_0.0.5_linux_amd64.tar.gz"
      sha256 "c1e6b3121599b6894bd066d0cf392f234d4204587e477ebecb1208f0e9b5cb46"

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
