# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HapNatureRemo < Formula
  desc "This app provides homekit virtual devices defined by Nature Remo."
  homepage "https://github.com/legnoh/hap-nature-remo"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-nature-remo/releases/download/0.0.6/hap-nature-remo_0.0.6_darwin_amd64.tar.gz"
      sha256 "ec10d141bb87fceffb438019607fb1c7f53039c971e149ff637b010e3a226f99"

      def install
        bin.install "hap-nature-remo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/legnoh/hap-nature-remo/releases/download/0.0.6/hap-nature-remo_0.0.6_darwin_arm64.tar.gz"
      sha256 "93ec727128178470f2bc8b7de96ece076c44bae0407741a1695175d2e9b77b14"

      def install
        bin.install "hap-nature-remo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/legnoh/hap-nature-remo/releases/download/0.0.6/hap-nature-remo_0.0.6_linux_arm64.tar.gz"
      sha256 "3abbcd8f24fcec0e299ca38baaffe436a2d44e5e0d96623f93051537bab93479"

      def install
        bin.install "hap-nature-remo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-nature-remo/releases/download/0.0.6/hap-nature-remo_0.0.6_linux_amd64.tar.gz"
      sha256 "ff8ae3cf7ea8b426ef93f02eff3b989062017172662557c6df960e8e70e517ff"

      def install
        bin.install "hap-nature-remo"
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
