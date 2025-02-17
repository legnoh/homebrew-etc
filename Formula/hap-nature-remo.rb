# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HapNatureRemo < Formula
  desc "This app provides homekit virtual devices defined by Nature Remo.
"
  homepage "https://github.com/legnoh/hap-nature-remo"
  version "0.0.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-nature-remo/releases/download/0.0.38/hap-nature-remo_0.0.38_darwin_amd64.tar.gz"
      sha256 "4833192aae73d0eb931c82c80b7d7b0b68aa2c85d2a5705d7fa5216009432155"

      def install
        bin.install "hap-nature-remo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/legnoh/hap-nature-remo/releases/download/0.0.38/hap-nature-remo_0.0.38_darwin_arm64.tar.gz"
      sha256 "6dda6711ab5b576f6571224e2bed66401505e20659b3816e7237663de6f6e59f"

      def install
        bin.install "hap-nature-remo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/legnoh/hap-nature-remo/releases/download/0.0.38/hap-nature-remo_0.0.38_linux_amd64.tar.gz"
        sha256 "c918aa89e1331c31098e8e71d7e2ffb1037cd94047cf2c35cc1352e49b6fe647"

        def install
          bin.install "hap-nature-remo"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/legnoh/hap-nature-remo/releases/download/0.0.38/hap-nature-remo_0.0.38_linux_arm64.tar.gz"
        sha256 "d11e774abe21a4d292b9b4a2a90e971334a899a84c348e0d80b9b7a91d419e6c"

        def install
          bin.install "hap-nature-remo"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Please check usage at README:
          https://github.com/legnoh/hap-nature-remo/blob/main/README.md
    EOS
  end

  service do
    run [opt_bin/"hap-nature-remo", "serve"]
    keep_alive true
    log_path var/"log/hap-nature-remo.log"
    error_log_path var/"log/hap-nature-remo.log"
  end

  test do
    system "#{bin}/hap-nature-remo --help"
  end
end
