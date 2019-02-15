require 'formula'

class Captain < Formula
  desc "Easily start and stop docker compose projects"
  homepage 'https://github.com/jenssegers/captain'

  if OS.mac?
    url 'https://github.com/jenssegers/captain/releases/download/0.3.2/captain-osx', :using => :nounzip
    sha256 'ff598cfeff8b8130005974809342cbdcd2a827cc94b46a6388ed2a6d4486583b'
  elsif OS.linux?
    url 'https://github.com/jenssegers/captain/releases/download/0.3.2/captain-linux', :using => :nounzip
    sha256 'f6faf8059a44f287c14b68db40181399a5e49814030e3ccc668c0df93fba23b8'
  end

  depends_on :arch => :x86_64

  def install
    if OS.mac?
      mv "captain-osx", "captain"
    elsif OS.linux?
      mv "captain-linux", "captain"
    end
    bin.install 'captain'
  end

  test do
    system "#{bin}/captain"
  end
end
