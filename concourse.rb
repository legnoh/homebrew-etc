require 'formula'

class Concourse < Formula
  homepage 'https://concourse-ci.org/'
  version '4.2.2'

  if OS.mac?
    url 'https://github.com/concourse/concourse/releases/download/v#{version}/concourse_darwin_amd64'
    sha256 'cfd26dbe70d8ba24a7ebbf0ef8b11fe06f7d16bc45b5e8fee39acb85885d1267'
  elsif OS.linux?
    url 'https://github.com/concourse/concourse/releases/download/v#{version}/concourse_linux_amd64'
    sha256 '5180903fee6a8fcdf8ba5bd34f270c5c467342f45534692af16f2951181e8749'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'concourse'
  end

  test do
    system "#{bin}/concourse"
  end
end
