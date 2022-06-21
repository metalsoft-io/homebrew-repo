# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "2.7.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.7.8/metalcloud-cli_2.7.8_Darwin_arm64.tar.gz"
      sha256 "f32e00ed12300ee6384e102cf70419306e4f465f30897fd73225d46ae491fb09"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.7.8/metalcloud-cli_2.7.8_Darwin_x86_64.tar.gz"
      sha256 "48482566cf303c1ce30a7b504f7cf165b0cc58b76c51d9b181b3a596841e16a9"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.7.8/metalcloud-cli_2.7.8_Linux_x86_64.tar.gz"
      sha256 "0cb53c46a705613a9070a141d9aa06693f7a1864454b821c5b6403790462a593"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.7.8/metalcloud-cli_2.7.8_Linux_arm64.tar.gz"
      sha256 "53fd014b97594b12917c54e9b4a41ca067d2bb917b4c4833c0103ce6b08ff8fa"

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
