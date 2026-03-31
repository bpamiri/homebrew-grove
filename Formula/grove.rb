class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.26/grove-darwin-arm64.tar.gz"
      sha256 "caf7adf5bc8a21c1040aeb799ceed4c5b525faebd22b27ce0e1f3d9ba77a3cef"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.26/grove-darwin-x64.tar.gz"
      sha256 "ac68dbf7538c4efb2475b337b38a1aeb6f6139348e26e7015ca4bec0a9463a06"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.26/grove-linux-x64.tar.gz"
    sha256 "2e65f90ff3dd30371cb4f276fb1d16e452c2e3812052fc40d7fb8f8116acf7d6"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
