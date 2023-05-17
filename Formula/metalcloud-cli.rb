# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "3.2.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.2.15/metalcloud-cli_3.2.15_Darwin_x86_64.tar.gz"
      sha256 "8188b1a6b605af53bc9b9acccb6cdc5449729fffd1cee15ce91b497adee11a5f"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.2.15/metalcloud-cli_3.2.15_Darwin_arm64.tar.gz"
      sha256 "50c9ff3bc46117b590e68e421be7bbe5628e2d9318fa99a41fb51ecc8c9dff9b"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.2.15/metalcloud-cli_3.2.15_Linux_arm64.tar.gz"
      sha256 "db7521a5ec19e8f87225ce841bbbab7e9d58388758bcce65cc05f6738637b450"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.2.15/metalcloud-cli_3.2.15_Linux_x86_64.tar.gz"
      sha256 "741a6f80215d20dc31c667be6231277ca0657a5c6954c0bfcc8617448289df7c"

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
