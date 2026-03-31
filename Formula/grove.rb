class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.25/grove-darwin-arm64.tar.gz"
      sha256 "1ae4bd09cde351ffbbf7ee0cb670ce4151eb8cd11a8fd7f4531cfae850d7073f"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.25/grove-darwin-x64.tar.gz"
      sha256 "c40427db9ab4b9f7e375e3739067e1c8ed8e6f879c952a87a61e4849e73e0e17"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.25/grove-linux-x64.tar.gz"
    sha256 "0c95a56b76130c5db2ec5bf79c5fbca9a6976e742f6f393d3648dd3327eb9522"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
