class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.14/grove-darwin-arm64.tar.gz"
      sha256 "fce5552dfdff1b6a3d1d2069d280fff5d2e199099afe5a8c0b3dd55c9c01ddf6"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.14/grove-darwin-x64.tar.gz"
      sha256 "5985b6529cddcdaba9cebb03e9ff2d80b400adef5b1a46479f637df6609a6da0"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.14/grove-linux-x64.tar.gz"
    sha256 "bba53f3a7afae37ade4e64e7312dba6a79ec5ac3d61370a4a1ec2824eaf8a40f"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
