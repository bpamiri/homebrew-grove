class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.23/grove-darwin-arm64.tar.gz"
      sha256 "b1102dda0e32abcfa5d867a42043528fc9debba0379e3f71c49d5beb85e249e4"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.23/grove-darwin-x64.tar.gz"
      sha256 "a00b5608e82b26cd854daab22fedbd159fd1aec41f4fe15be4f68dfbd791837c"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.23/grove-linux-x64.tar.gz"
    sha256 "ceea7d1f1ba7e9dea77383771c13e6a0b13a3889e45b4fa5b7a0078420d220d4"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
