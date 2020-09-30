# This file was generated by GoReleaser. DO NOT EDIT.
class MetalcloudCli < Formula
  desc "Metalcloud's CLI"
  homepage "https://bigstep.com/"
  version "1.7.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bigstepinc/metalcloud-cli/releases/download/v1.7.3/metalcloud-cli_1.7.3_Darwin_x86_64.tar.gz"
    sha256 "2c66adec49117a3da88a4818067f84267ba102ab5516fd799fdf3583473184c1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bigstepinc/metalcloud-cli/releases/download/v1.7.3/metalcloud-cli_1.7.3_Linux_x86_64.tar.gz"
      sha256 "a803ba50a274a1dce506f88edf22e7a9bc60d2bef104511c61c8d7649a1adfa6"
    end
  end

  def install
    bin.install "metalcloud-cli"
  end

  def caveats; <<~EOS
    metalcloud-cli help
  EOS
  end
end
