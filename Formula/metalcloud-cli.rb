# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://bigstep.com/"
  version "2.2.11"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.2.11/metalcloud-cli_2.2.11_Darwin_x86_64.tar.gz"
    sha256 "70769568970dbf0051936ad2396d484b57a6949463298b03cdcd386b1f0141aa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/metalsoft-io/metalcloud-cli/releases/download/v2.2.11/metalcloud-cli_2.2.11_Linux_x86_64.tar.gz"
    sha256 "95a5bcfa5fcf1105e16f713e4b4b89d1ca1b43826fe9c3030c313039f3c013d1"
  end

  def install
    bin.install "metalcloud-cli"
  end

  def caveats; <<~EOS
    metalcloud-cli help
  EOS
  end
end
