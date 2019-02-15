require 'formula'

class Concourse < Formula
  desc "simple CI Platform"
  homepage 'https://concourse-ci.org/'

  depends_on "postgres"

  if OS.mac?
    url 'https://github.com/concourse/concourse/releases/download/v4.2.2/concourse_darwin_amd64', :using => :nounzip
    sha256 'cfd26dbe70d8ba24a7ebbf0ef8b11fe06f7d16bc45b5e8fee39acb85885d1267'
  elsif OS.linux?
    url 'https://github.com/concourse/concourse/releases/download/v4.2.2/concourse_linux_amd64', :using => :nounzip
    sha256 '5180903fee6a8fcdf8ba5bd34f270c5c467342f45534692af16f2951181e8749'
  end

  depends_on :arch => :x86_64

  def install
    if OS.mac?
      mv "concourse_darwin_amd64", "concourse"
    elsif OS.linux?
      mv "concourse_linux_amd64", "concourse"
    end
    bin.install 'concourse'
  end

  def post_install
    (var/"log").mkpath
    (var/"concourse").mkpath
  end

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>KeepAlive</key>
      <true/>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{opt_bin}/concourse</string>
        <string>quickstart</string>
        <string>--add-local-user=user:pass</string>
        <string>--main-team-allow-all-users</string>
        <string>--postgres-database=postgres</string>
        <string>--worker-work-dir=#{var}/concourse</string>
      </array>
      <key>StandardOutPath</key>
        <string>#{var}/log/concourse.log</string>
      <key>StandardErrorPath</key>
        <string>#{var}/log/concourse.log</string>
      <key>RunAtLoad</key>
      <true/>
      <key>WorkingDirectory</key>
      <string>#{HOMEBREW_PREFIX}</string>
    </dict>
    </plist>
  EOS
  end

  test do
    system "#{bin}/concourse"
  end
end
