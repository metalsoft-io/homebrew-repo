# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "3.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.5.3/metalcloud-cli_3.5.3_Darwin_arm64.tar.gz"
      sha256 "597976bdf2b155532a72876fd258434400760093f950cb480e4ce2634384e91d"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.5.3/metalcloud-cli_3.5.3_Darwin_x86_64.tar.gz"
      sha256 "585d7d22e1f6b88276173af9c2c9c8d9dc9d14f1c50b15c2888f293dd46623a2"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.5.3/metalcloud-cli_3.5.3_Linux_arm64.tar.gz"
      sha256 "5320ae0df2542747e33d42e6190e19ace5f0e9154171dff91b693e8df43cc7d0"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.5.3/metalcloud-cli_3.5.3_Linux_x86_64.tar.gz"
      sha256 "8d6afef7ad4c0f248a3eb44356b7987745c901835cebc51b5bfbf6ba9d4042e9"

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
