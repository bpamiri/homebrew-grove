class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.7/grove-darwin-arm64.tar.gz"
      sha256 "14aea72df44aa4be9ffb3b717aaf081d9914c45b61bcdb4551b5d5cc8bf98038"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.7/grove-darwin-x64.tar.gz"
      sha256 "b0277b2507d024dc2809bef6891597a776084282a20cd770d8efa2b7ef137b4d"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.7/grove-linux-x64.tar.gz"
    sha256 "7bc9958d6b9aacb326842e12bd424a201bd415a57f31872d07ca8887a9902d2e"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
