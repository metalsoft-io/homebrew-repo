# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "3.6.7"

  on_macos do
    on_intel do
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.6.7/metalcloud-cli_3.6.7_Darwin_x86_64.tar.gz"
      sha256 "07acc7c387fc283db2117b9ceb6ec6a690a3244dd21384121a975de633df5726"

      def install
        bin.install "metalcloud-cli"
      end
    end
    on_arm do
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.6.7/metalcloud-cli_3.6.7_Darwin_arm64.tar.gz"
      sha256 "77d4b4e35350f9cfd0ebb598ad93811d48a8e61745bbdb5d734f07658203bc66"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.6.7/metalcloud-cli_3.6.7_Linux_x86_64.tar.gz"
        sha256 "0669aa11477eb7b941fba86cc3c4a7f399bf8ae68e3636acd445710c0fa41d73"

        def install
          bin.install "metalcloud-cli"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.6.7/metalcloud-cli_3.6.7_Linux_arm64.tar.gz"
        sha256 "03aaf4bece4b218a3308b9828bd2fd5729ad6703f9ff1cabd1de73caebf425ad"

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
