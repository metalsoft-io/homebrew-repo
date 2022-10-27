# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "2.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.9.0/metalcloud-cli_2.9.0_Darwin_x86_64.tar.gz"
      sha256 "03e5c0a6dda47c036a04f7bd6d731b26be217496083d9a52b80f87a709412921"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.9.0/metalcloud-cli_2.9.0_Darwin_arm64.tar.gz"
      sha256 "aa417af4769c7af1222cdfe61fd7ca1d4d36c4c13ad6bea36f0e1263b845f0ca"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.9.0/metalcloud-cli_2.9.0_Linux_arm64.tar.gz"
      sha256 "22b05203fceaaddc47373175fd385bf33799d4919feb0f9b7887973b5bc57676"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.9.0/metalcloud-cli_2.9.0_Linux_x86_64.tar.gz"
      sha256 "d9a80b0b5ccd1825c7519155e01ddafdc4c969687e3a2072a01159faa38ddd57"

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
