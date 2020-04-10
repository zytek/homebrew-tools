class Goship < Formula
  desc "Utility that helps find, connect  and copy to particular cloud resources using configured providers"
  homepage "https://github.com/zendesk/goship"
  url "https://github.com/zytek/goship/archive/1.0.5-ec2.tar.gz"
  sha256 "8108f04ffe5643ab6a6735a1d83e95026ac68da8d0686276ecec3a4ed7dbbae7"
  version "1.0.5-ec2"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "goship"
    bin.install "goship"
  end

  test do
    system "#{bin}/goship version"
  end
end
