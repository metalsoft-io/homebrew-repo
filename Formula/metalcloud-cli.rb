# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "3.3.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.3.6/metalcloud-cli_Darwin_x86_64.tar.gz"
      sha256 "10ea972582f7d81a78ac389a8784019f01618fd631e1a9d4c767973b8b0013e8"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.3.6/metalcloud-cli_Darwin_arm64.tar.gz"
      sha256 "1e9b9feb01d74dd882048c6d9110202ac562ee230e4fcf836cbd36f636dd78a6"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.3.6/metalcloud-cli_Linux_arm64.tar.gz"
      sha256 "a4d3d2212519b2726e8055767676232267f8774763e31fbe2a42b5514b65b53a"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.3.6/metalcloud-cli_Linux_x86_64.tar.gz"
      sha256 "313a304a7db09241a80cc147fd4416ded50e4280c467fa0e966fbbcb499ecfcd"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  def caveats
    <<~EOS
      metalcloud-cli help
    EOS
  end
end
