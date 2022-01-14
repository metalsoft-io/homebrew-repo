# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "2.3.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.3.10/metalcloud-cli_2.3.10_Darwin_x86_64.tar.gz"
      sha256 "a9c14814a309b0d15072f0024c8762610a174ed68748df18e4c0ab5eec21f21d"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.3.10/metalcloud-cli_2.3.10_Darwin_arm64.tar.gz"
      sha256 "292ce3a77fe04a8e9f715c90f52a1a61257c1d90b73fd90baa4b900355fe45df"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.3.10/metalcloud-cli_2.3.10_Linux_x86_64.tar.gz"
      sha256 "7d017230021cdca4cf9d0e0714f38c903e6eeaabbb7ed8280b477f7a47bb887f"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.3.10/metalcloud-cli_2.3.10_Linux_arm64.tar.gz"
      sha256 "e8ee440f59d535e5e8be196a389a5298e7cad340cfaf90e93491673e43b61c6a"

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
