# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "3.6.2"

  on_macos do
    on_intel do
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.6.2/metalcloud-cli_3.6.2_Darwin_x86_64.tar.gz"
      sha256 "8f05a82d1910823c0cdd5e599a88cb93622fd09af417e8077a882db703b5763b"

      def install
        bin.install "metalcloud-cli"
      end
    end
    on_arm do
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.6.2/metalcloud-cli_3.6.2_Darwin_arm64.tar.gz"
      sha256 "6821db3e7dc991a506b2be0bbe3f9de42a5e75efbff7353978c6039f996e681b"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.6.2/metalcloud-cli_3.6.2_Linux_x86_64.tar.gz"
        sha256 "3c611345160159f813a4734615714266a0ed7f4a40030599f8eb4f7852f37176"

        def install
          bin.install "metalcloud-cli"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.6.2/metalcloud-cli_3.6.2_Linux_arm64.tar.gz"
        sha256 "dd68fffedd9a66a02bda45f03480ac715fc3d99e29cac4887d008202a9954fad"

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
