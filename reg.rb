require 'formula'

class Reg < Formula
  desc "Docker registry v2 command line client and repo listing generator with security checks."
  homepage 'https://github.com/genuinetools/reg'

  if OS.mac?
    url 'https://github.com/genuinetools/reg/releases/download/v0.16.0/reg-darwin-amd64', :using => :nounzip
    sha256 'f644bf8429a20c3dd19527c5f25d239b3c2544dcc65daeaa7bae6dc7fb117d61'
  elsif OS.linux?
    url 'https://github.com/genuinetools/reg/releases/download/v0.16.0/reg-linux-amd64', :using => :nounzip
    sha256 '0470b6707ac68fa89d0cd92c83df5932c9822df7176fcf02d131d75f74a36a19'
  end

  depends_on :arch => :x86_64

  def install
    if OS.mac?
      mv "reg-darwin-amd64", "reg"
    elsif OS.linux?
      mv "reg-linux-amd64", "reg"
    end
    bin.install 'reg'
  end

  test do
    system "#{bin}/reg"
  end
end
