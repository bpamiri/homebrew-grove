class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.4/grove-darwin-arm64.tar.gz"
      sha256 "40c197de9034b9a32834173f0281420f239de1b0600b80a9af6ffb29cf2e4498"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.4/grove-darwin-x64.tar.gz"
      sha256 "b0005ffc03c06bbcfef30827ae5202d860b6b9b99bf05fbdc9752998cf47d715"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.4/grove-linux-x64.tar.gz"
    sha256 "ba4846ebc39b37041b67839972647a9308cff58bf578b2a811112831da8bd921"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
