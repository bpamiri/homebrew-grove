class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.14/grove-darwin-arm64.tar.gz"
      sha256 "633975696db12d34a0d9463f78f17795ce4358251c03e1a07ded38f6a8eca34d"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.14/grove-darwin-x64.tar.gz"
      sha256 "98b634889e2a487c28b6e5993a0a63e88ae4fc49bdf499ecda6f4e84ceca26d3"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.14/grove-linux-x64.tar.gz"
    sha256 "32f0a69c0402f0e5eeca68bdd00cd133cd0142e95451b717e54b72901fdd5cc3"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
