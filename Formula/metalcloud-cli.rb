# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://metalsoft.io/"
  version "3.4.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.4.7/metalcloud-cli_3.4.7_Darwin_arm64.tar.gz"
      sha256 "778120f4f683eee513a7298e500b8b04dd58821c565c44d89730291a67b9a493"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.4.7/metalcloud-cli_3.4.7_Darwin_x86_64.tar.gz"
      sha256 "b488427119003ecbb8fb442a3cd8eb9c881986d262131e959dace58591c755b8"

      def install
        bin.install "metalcloud-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.4.7/metalcloud-cli_3.4.7_Linux_arm64.tar.gz"
      sha256 "129d077dd2402566f73fd2ef4a515e5b73d39e795c9e49ae3a456f10085990df"

      def install
        bin.install "metalcloud-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v3.4.7/metalcloud-cli_3.4.7_Linux_x86_64.tar.gz"
      sha256 "5ce5ed80bb7902e7810070a1e557155a7fc2a3bfd1432f8b227cddf7c793a022"

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
