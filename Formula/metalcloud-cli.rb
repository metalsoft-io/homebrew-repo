# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "3.4.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.4.6/metalcloud-cli_ 3.4.6_Darwin_arm64.tar.gz"
      sha256 "58d8dfb478d5dad9ed811e0c74e47bcb78ab36ac3b377e44801853f571b15133"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.4.6/metalcloud-cli_ 3.4.6_Darwin_x86_64.tar.gz"
      sha256 "94647b43f3c76bb1ce2601c51dbb511e39e3857227b557ae60704dce747707a5"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.4.6/metalcloud-cli_ 3.4.6_Linux_arm64.tar.gz"
      sha256 "c50e362e3d62067d9fb1762242b211b47735cd876e755f8aa11d99759cec0154"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.4.6/metalcloud-cli_ 3.4.6_Linux_x86_64.tar.gz"
      sha256 "f7ee15dda87181937b2bd4de796340925d1e14b922ec29608501340f1f518bd7"

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
