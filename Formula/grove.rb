class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.21/grove-darwin-arm64.tar.gz"
      sha256 "4de379f98aa4532630e7bcfa1b3b0699843554d85e4136b2eea4fd90d252059e"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.21/grove-darwin-x64.tar.gz"
      sha256 "94a0441b9717481477bef395abc8046d120de8041928926d1b71f62d649d9f2d"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.21/grove-linux-x64.tar.gz"
    sha256 "3e54cb9457800e2ccd1adc092b267a9044804323b91b96718468e3d90bf2278c"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
