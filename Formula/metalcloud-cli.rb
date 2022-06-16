# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "2.7.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.7.7/metalcloud-cli_2.7.7_Darwin_arm64.tar.gz"
      sha256 "8ad21a82303ada234c635a2b1cd21353a8c1d57dd1f87f6c4b4da5d51a7a63f8"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.7.7/metalcloud-cli_2.7.7_Darwin_x86_64.tar.gz"
      sha256 "25db06a3f0c2171a6580415517215140bc7e0b03d015fa4d3b02127d2c53a56f"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.7.7/metalcloud-cli_2.7.7_Linux_arm64.tar.gz"
      sha256 "d6ee51048d0317e559eb248972de08167f71957975febc664e5baa0e04797aab"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.7.7/metalcloud-cli_2.7.7_Linux_x86_64.tar.gz"
      sha256 "d2c0b43c52b5812785851894c1f51f8d1be317145f9fc930e0792b628fa320f9"

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
