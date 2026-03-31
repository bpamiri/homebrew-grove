class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.24/grove-darwin-arm64.tar.gz"
      sha256 "03683c16bbf10baabf37f554e546022d6ab2502617b7720fcc893f763d1273b9"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.24/grove-darwin-x64.tar.gz"
      sha256 "3af2eb5c32647d40333ff85ca9d844f497b8a6fb31369fd458b03333170b20be"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.24/grove-linux-x64.tar.gz"
    sha256 "73b8d1dd27b74656a8d3b9292377358a781f5b0cc1097bea102ab1a1ab7c35a7"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
