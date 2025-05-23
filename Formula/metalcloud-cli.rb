# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "3.6.10"

  on_macos do
    on_intel do
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.6.10/metalcloud-cli_3.6.10_Darwin_x86_64.tar.gz"
      sha256 "e40c2e8123095abd60a2771471da70cd397f1ea08d6402b85863af64f9bf5d94"

      def install
        bin.install "metalcloud-cli"
      end
    end
    on_arm do
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.6.10/metalcloud-cli_3.6.10_Darwin_arm64.tar.gz"
      sha256 "61086dcdfab955e5e01d542622272981d2d7f13db311d3397b820583f0072f42"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.6.10/metalcloud-cli_3.6.10_Linux_x86_64.tar.gz"
        sha256 "fc3b5f5c876b18ae7b61769b73def152d7b94c130f047ccb0649a1760ecc4b14"

        def install
          bin.install "metalcloud-cli"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.6.10/metalcloud-cli_3.6.10_Linux_arm64.tar.gz"
        sha256 "dc38f869e31e0ba790c411fac0e8906cce42a60d30c6081691f6e92a6fc0e5a5"

        def install
          bin.install "metalcloud-cli"
        end
      end
    end
  end

  def caveats
    <<~EOS
      metalcloud-cli help
    EOS
  end
end
