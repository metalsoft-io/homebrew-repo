# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "2.4.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.4.9/metalcloud-cli_2.4.9_Darwin_arm64.tar.gz"
      sha256 "ac29b7e8640340921db3238f517c9b5ff23215743e5465b23d1ae3727909e2c0"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.4.9/metalcloud-cli_2.4.9_Darwin_x86_64.tar.gz"
      sha256 "1f4dc65f172a75b5fe61786bb792905485d52e39310017367e552ebe4540b9dc"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.4.9/metalcloud-cli_2.4.9_Linux_arm64.tar.gz"
      sha256 "88d6b2251873f55b6c19a14a9c8c34a05a3d64d8ea7812ad2282601d873ae9e7"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.4.9/metalcloud-cli_2.4.9_Linux_x86_64.tar.gz"
      sha256 "574cdedc21936b30bb130c18f6c39a13170a46058695b9e5cd0607f1eb87469e"

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
