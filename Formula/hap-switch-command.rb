# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HapSwitchCommand < Formula
  desc "This app provides homekit virtual switch devices executing local commands.
"
  homepage "https://github.com/legnoh/hap-switch-command"
  version "0.0.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.43/hap-switch-command_0.0.43_darwin_amd64.tar.gz"
      sha256 "d7231abcf25a08af630d9f902c95a3f0171c396c10abf3d42d68d1f8baffac9c"

      def install
        bin.install "hap-switch-command"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.43/hap-switch-command_0.0.43_darwin_arm64.tar.gz"
      sha256 "54c9524b40f451e5284d84965a7ef091d0e19f142d74923b157435a3a5c6d1ec"

      def install
        bin.install "hap-switch-command"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.43/hap-switch-command_0.0.43_linux_amd64.tar.gz"
        sha256 "f73ff5578bb70ef9be03c4c1f8e5f7506248db462062e3cfcc552afc9308eaf0"

        def install
          bin.install "hap-switch-command"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/legnoh/hap-switch-command/releases/download/0.0.43/hap-switch-command_0.0.43_linux_arm64.tar.gz"
        sha256 "1258c325dddfc5af5d0a43d1fccc3642820645803b81784fa4394b11073d9eee"

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
