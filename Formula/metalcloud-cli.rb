# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "2.2.25"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.2.25/metalcloud-cli_2.2.25_Darwin_x86_64.tar.gz"
      sha256 "1709105cd76caec66877a05d047d888ff8c7abdf0a6d1b704a45aa8a950b42c0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.2.25/metalcloud-cli_2.2.25_Darwin_arm64.tar.gz"
      sha256 "a6dcc29380daf94564cb4709a0e48c86c512110e088b13e48a0d9b81d72ba757"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.2.25/metalcloud-cli_2.2.25_Linux_arm64.tar.gz"
      sha256 "3502ea019cedff4170a7abc0eb58f386468f0729e7d6d97800563a3efcf5ee25"
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.2.25/metalcloud-cli_2.2.25_Linux_x86_64.tar.gz"
      sha256 "e7a9bd03810cecd4079761616315cb227a8e9b85a977d02b7be141439d267e7c"
    end
  end

  def install
    bin.install "metalcloud-cli"
  end

  def caveats; <<~EOS
    metalcloud-cli help
  EOS
  end
end
