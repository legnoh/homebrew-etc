# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HapSwitchCommand < Formula
  desc "This app provides homekit virtual switch devices executing local commands."
  homepage "https://github.com/legnoh/hap-switch-command"
  version "0.0.25"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.25/hap-switch-command_0.0.25_darwin_amd64.tar.gz"
      sha256 "f5652fd5bd347d1419d03f8c5d5eeb9db6905d2f1d1c7590f69e8364b76d7c7e"

      def install
        bin.install "hap-switch-command"
      end
    end
    on_arm do
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.25/hap-switch-command_0.0.25_darwin_arm64.tar.gz"
      sha256 "aa70885fc472c36de26c741ca9caee14e6205453db46ec35dd0e00a41061671c"

      def install
        bin.install "hap-switch-command"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.25/hap-switch-command_0.0.25_linux_amd64.tar.gz"
        sha256 "963c094be32dee616b1462b6884c46608d1c04c0a7d15bceb7f9615b6ba955b4"

        def install
          bin.install "hap-switch-command"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.25/hap-switch-command_0.0.25_linux_arm64.tar.gz"
        sha256 "e1e550374a1e9a0e4667b6c757094c5e19b92123418e1853df2b0e4cd9563deb"

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
