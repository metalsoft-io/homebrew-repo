# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "2.3.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.3.5/metalcloud-cli_2.3.5_Darwin_x86_64.tar.gz"
      sha256 "e10fb7025266fd930599dd55668e040ad284fc1536d790161b6ca4c59dd145f4"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.3.5/metalcloud-cli_2.3.5_Darwin_arm64.tar.gz"
      sha256 "f83d292b7f62011187ce743d2c06914b7ba29f568ed04d6b27ae266706b7b565"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.3.5/metalcloud-cli_2.3.5_Linux_arm64.tar.gz"
      sha256 "58a1044287007279ba09f1e6e1c98ceb603b75b71c7f7e4f5a7068f2bfe1ed57"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.3.5/metalcloud-cli_2.3.5_Linux_x86_64.tar.gz"
      sha256 "0f2b72a354481f762f33e512c3ad9a8055cce31bfad7c4a1556394b19ee66653"

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
