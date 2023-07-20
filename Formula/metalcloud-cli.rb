# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "3.3.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.3.5/metalcloud-cli_Darwin_x86_64.tar.gz"
      sha256 "d4ce35fd6556f6ac72c187297d76483f849fb5a3ecc32ee644d03ed64359ec90"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.3.5/metalcloud-cli_Darwin_arm64.tar.gz"
      sha256 "c1482048723f1625cd90bf21c81a850bdcc2c7307ed0555ee024c48e0ec21624"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.3.5/metalcloud-cli_Linux_arm64.tar.gz"
      sha256 "2f9c875dccc79e035717870e41110081fc74b18e71bcaf81a4755b4806c518bf"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.3.5/metalcloud-cli_Linux_x86_64.tar.gz"
      sha256 "74f1851ee7fb4159bd1a0a4b3e06448664a2d7b3b79174a8173f30870ad905c0"

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
