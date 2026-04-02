class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.30/grove-darwin-arm64.tar.gz"
      sha256 "989fb9ad62415db89b453116caacad3827011ab4776e992cae4867175a5e264e"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.30/grove-darwin-x64.tar.gz"
      sha256 "4c556ae92e0b4835081e333cb2c25fc78c5e96a2448fd5d9468a983fab63a368"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.30/grove-linux-x64.tar.gz"
    sha256 "5f46c2c8172f31d33cfaa3026fd364bccc6499a4f964d12135cc18109009e8cd"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
