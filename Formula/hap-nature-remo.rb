# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HapNatureRemo < Formula
  desc "This app provides homekit virtual devices defined by Nature Remo."
  homepage "https://github.com/legnoh/hap-nature-remo"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-nature-remo/releases/download/0.0.1/hap-nature-remo_0.0.1_darwin_amd64.tar.gz"
      sha256 "9bde105c86ed934901105990e7f269edb79d4b9be6e2790ab2459da877f9b1c8"

      def install
        bin.install "hap-nature-remo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/legnoh/hap-nature-remo/releases/download/0.0.1/hap-nature-remo_0.0.1_darwin_arm64.tar.gz"
      sha256 "d57448d83639bc38894490558406463f4e3bb854e161a81601d39836f4683d63"

      def install
        bin.install "hap-nature-remo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/legnoh/hap-nature-remo/releases/download/0.0.1/hap-nature-remo_0.0.1_linux_arm64.tar.gz"
      sha256 "2f41f7e6492eb9c2189fd203489cedc03339cfa0dfd9e9132c1cd69a25f3a6fd"

      def install
        bin.install "hap-nature-remo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/legnoh/hap-nature-remo/releases/download/0.0.1/hap-nature-remo_0.0.1_linux_amd64.tar.gz"
      sha256 "d3ad6219000483d104f0b501a00f9aefdf80985f5c50b078d35fb2ba4fc5e565"

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
