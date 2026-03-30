class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.8/grove-darwin-arm64.tar.gz"
      sha256 "b4bc36a342a0e0b97354566b5531c01956a610a54eb3b2a064539b95a638e86d"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.8/grove-darwin-x64.tar.gz"
      sha256 "18e030a02289919fc624f494c88c1bffe45f028d7972223df0709d67440483bb"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.8/grove-linux-x64.tar.gz"
    sha256 "733271461a77f90cce0a91ce74a333988a8b65b42b78805ff64f5d76d81ca53e"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
