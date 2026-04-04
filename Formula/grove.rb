class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.13/grove-darwin-arm64.tar.gz"
      sha256 "61a4d17e701db01ccf3cf59d082815570b4a24740a3ce7e40b77726144cdf211"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.13/grove-darwin-x64.tar.gz"
      sha256 "1fa8b69ccb0dc6d1ff31546ddfb7a265147455e640ccb3bd356f8cbceff708fb"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.13/grove-linux-x64.tar.gz"
    sha256 "eaf8fe4bd43273773b3936d751415369b51b2a912f4bf958f2280263bf6a73c9"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
