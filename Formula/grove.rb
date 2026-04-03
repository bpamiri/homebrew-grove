class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.1/grove-darwin-arm64.tar.gz"
      sha256 "9487a23be2fe35acbb3a922d236678a2f14ab09baeb2f6a000e0562aed7abd7b"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.1/grove-darwin-x64.tar.gz"
      sha256 "0ff5da156b73e6ce2ed102b9be86d87031ac49603846a02f81416081c493a188"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.1/grove-linux-x64.tar.gz"
    sha256 "d6f1fab94657a09b778250e7093fd194a41cccf687dc1a530087d0c9308e5348"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
