class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.6/grove-darwin-arm64.tar.gz"
      sha256 "2d04c31ccebbe926d1e32533be51bdb141585da13029d286024369e83b8f0dc0"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.6/grove-darwin-x64.tar.gz"
      sha256 "da343711e690df85d1c5f60bf17c8ee3c85f85e8ff674a45f5cb84d323aac3c5"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.6/grove-linux-x64.tar.gz"
    sha256 "69929abcb988d9b01e9968bff938fa6999a78bee47c2b11328b799cbfd2aef03"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
