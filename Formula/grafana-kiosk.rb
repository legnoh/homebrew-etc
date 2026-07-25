class GrafanaKiosk < Formula
  desc "The utility to quickly standup a kiosk on devices like a Raspberry Pi or NUC."
  homepage "https://github.com/grafana/grafana-kiosk"
  version "1.0.6"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      if Hardware::CPU.physical_cpu_arm64?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.darwin.arm64", :using => :nounzip
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_32_bit?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.darwin", :using => :nounzip
      elsif Hardware::CPU.physical_cpu_arm64?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.darwin.amd64", :using => :nounzip
      end
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_32_bit?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.linux.armv7", :using => :nounzip
      elsif Hardware::CPU.is_64_bit?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.linux.arm64", :using => :nounzip
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_32_bit?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.linux.386", :using => :nounzip
      elsif Hardware::CPU.is_64_bit?
        url "https://github.com/grafana/grafana-kiosk/releases/download/v#{version}/grafana-kiosk.linux.amd64", :using => :nounzip
      end
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        if Hardware::CPU.physical_cpu_arm64?
          bin_name = "grafana-kiosk.darwin.arm64"
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
