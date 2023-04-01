class GrafanaKiosk < Formula
  desc "The utility to quickly standup a kiosk on devices like a Raspberry Pi or NUC."
  homepage "https://github.com/grafana/grafana-kiosk"
  version "1.0.5"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      if Hardware::CPU.physical_cpu_arm64?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.darwin.amd64", :using => :nounzip
        sha256 "1aa091145f67830e51ccf324ca8903ecdf2e19c4125e71c3cb970a64650ac37b"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_32_bit?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.darwin", :using => :nounzip
        sha256 "c8cf3af70b0dd7f04852cd2966a589a885dc5cc02844dc5a3528977ba02a529d"
      elsif Hardware::CPU.physical_cpu_arm64?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.darwin.amd64", :using => :nounzip
        sha256 "1aa091145f67830e51ccf324ca8903ecdf2e19c4125e71c3cb970a64650ac37b"
      end
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_32_bit?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.linux.armv7", :using => :nounzip
        sha256 "5bf3648ff777d9a1b0fbe7eadd4d49e312b90128d680323143284aa4a290ec49"
      elsif Hardware::CPU.is_64_bit?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.linux.arm64", :using => :nounzip
        sha256 "e8a9e96980c36498f9446fc6ec7762541b903e9781ae45782215f22b01620bbc"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_32_bit?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.linux.386", :using => :nounzip
        sha256 "0d67ec8e7e469163e4daabff30c8d711f6f9af64dcccf4b1405a2cc4615d7903"
      elsif Hardware::CPU.is_64_bit?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.linux.amd64", :using => :nounzip
        sha256 "77361c8b7392d29c05a8ff21d3e445a94f24fd7478a21c8d9aff407525cae52d"
      end
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        if Hardware::CPU.physical_cpu_arm64?
          bin_name = "grafana-kiosk.darwin.amd64"
        end
      elsif Hardware::CPU.intel?
        if Hardware::CPU.is_32_bit?
          bin_name = "grafana-kiosk.darwin"
        elsif Hardware::CPU.physical_cpu_arm64?
          bin_name = "grafana-kiosk.darwin.amd64"
        end
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        if Hardware::CPU.is_32_bit?
          bin_name = "grafana-kiosk.linux.armv7"
        elsif Hardware::CPU.is_64_bit?
          bin_name = "grafana-kiosk.linux.arm64"
        end
      elsif Hardware::CPU.intel?
        if Hardware::CPU.is_32_bit?
          bin_name = "grafana-kiosk.linux.386"
        elsif Hardware::CPU.is_64_bit?
          bin_name = "grafana-kiosk.linux.amd64"
        end
      end
    end
    bin.install "#{bin_name}" => "grafana-kiosk"
  end

  test do
    system "#{bin}/grafana-kiosk --help"
  end

  service do
    user = ENV["USER"]
    if OS.mac?
      home_dir = "/Users/#{user}"
    elsif OS.linux?
      home_dir = "/home/#{user}"
    end
    run [opt_bin/"grafana-kiosk", "-c", "#{home_dir}/.grafana-kiosk-config.yml"]
    keep_alive true
    log_path var/"log/grafana-kiosk.log"
    error_log_path var/"log/grafana-kiosk.log"
  end
end
