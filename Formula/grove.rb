class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.9/grove-darwin-arm64.tar.gz"
      sha256 "f2508feac7e5a6d1cd58a80b1cedc710b28fc14736ab5bd11880f87769404755"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.9/grove-darwin-x64.tar.gz"
      sha256 "2b0f9ffb293b3b482dc498b780a82fc6e5517a08a3be222372d9a4fb304cb737"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.9/grove-linux-x64.tar.gz"
    sha256 "479b1eb32485d34d82df230aaf3dc1bad524a7f2a5f297a6d9a5f25138c06090"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
