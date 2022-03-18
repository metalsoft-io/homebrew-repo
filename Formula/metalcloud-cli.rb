# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "2.6.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.6.9/metalcloud-cli_2.6.9_Darwin_arm64.tar.gz"
      sha256 "e3e79b812c3bc4122cf2c60770ef1c2e71d31af8341189f76c553e8854353cdf"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.6.9/metalcloud-cli_2.6.9_Darwin_x86_64.tar.gz"
      sha256 "f6fac4d6f11d8af0055f35624a21deef71538ba54eb7cc0a6d48117b0173153e"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.6.9/metalcloud-cli_2.6.9_Linux_x86_64.tar.gz"
      sha256 "31b84751f8cac28de69943205eb4271a11ca0a9963f8d51c5f4cd6395486e248"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.6.9/metalcloud-cli_2.6.9_Linux_arm64.tar.gz"
      sha256 "1efb2b8d41eedc4f4280c78f2e43018c92c90f3c1a52433a2a03c6dc5e643fc7"

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
