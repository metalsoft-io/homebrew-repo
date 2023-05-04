# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "3.2.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.2.13/metalcloud-cli_3.2.13_Darwin_x86_64.tar.gz"
      sha256 "c376e71007764e781f1d4bad07f41d8e531a1d0e687144cc9bf7fc51fcfaf86b"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.2.13/metalcloud-cli_3.2.13_Darwin_arm64.tar.gz"
      sha256 "890704efbc56960770406fb1e2e40ae241d5cb7cd52ef01dedd0c0d52bb9d7a4"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.2.13/metalcloud-cli_3.2.13_Linux_arm64.tar.gz"
      sha256 "66deb527311200f1e8c64c0b81a8658caf482c85e468ba5fe60f87cf3ac5df4b"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.2.13/metalcloud-cli_3.2.13_Linux_x86_64.tar.gz"
      sha256 "115f162942289962264967990c4eabc070458367081c2165fd28e21d9e40a74a"

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
