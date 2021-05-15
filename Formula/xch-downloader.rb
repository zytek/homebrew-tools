# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class XchDownloader < Formula
  desc "Download utiity for xch-plotter.com"
  homepage "https://xch-plotter.com"
  version "0.2"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zytek/xch-downloader/releases/download/0.2/xch-downloader_0.2_Darwin_x86_64.tar.gz"
    sha256 "201ccf49fc32379dfe6e7c4b388ec3a42e43671290687ef2a31e7d25ac7a5243"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zytek/xch-downloader/releases/download/0.2/xch-downloader_0.2_Darwin_arm64.tar.gz"
    sha256 "190a79167c02fededb05e3d4780201156f55fbbb6239a99b2badd24b00ced536"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zytek/xch-downloader/releases/download/0.2/xch-downloader_0.2_Linux_x86_64.tar.gz"
    sha256 "b2299abc55b5254da7ee790a50bbed9a3605f75842d83fc415cfcef84bbe361e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/zytek/xch-downloader/releases/download/0.2/xch-downloader_0.2_Linux_arm64.tar.gz"
    sha256 "857b340df64e220a059cf47878206e45aa00105a845b34f52bcf6c51576768bc"
  end

  def install
    bin.install "xch-downloader"
  end

  test do
    system "#{bin}/xch-downloader"
  end
end
