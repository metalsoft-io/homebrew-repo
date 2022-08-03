# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "2.8.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.8.4/metalcloud-cli_2.8.4_Darwin_x86_64.tar.gz"
      sha256 "ba0173eadeef80d6ab4fc84359b5348b97c8dd662627cca3b422a6b030f1451f"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.8.4/metalcloud-cli_2.8.4_Darwin_arm64.tar.gz"
      sha256 "66e7982fc9f0d5d2b9f8bcd90d44870993b0e028cb9f67797f001d7fe8420d04"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.8.4/metalcloud-cli_2.8.4_Linux_arm64.tar.gz"
      sha256 "9918663790872612396f8a9d93db1cadb3a3d71d2e9de6b0edfaa14515f3bdf7"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.8.4/metalcloud-cli_2.8.4_Linux_x86_64.tar.gz"
      sha256 "2a465cb2bbefb665633bfa0c6b8f1b768cd150fddfe89a64a493d2f409e3026a"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  def caveats; <<~EOS
    metalcloud-cli help
  EOS
  end
end
