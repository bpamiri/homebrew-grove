class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.17/grove-darwin-arm64.tar.gz"
      sha256 "ed0785075b17cc374eab1a669fad078875db06d835366c203d10b8a77be40a52"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.17/grove-darwin-x64.tar.gz"
      sha256 "e012c9b49ed3a04192b7f01d310c8722280f58499ce08149b8bf6748b4c9d3c8"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.17/grove-linux-x64.tar.gz"
    sha256 "4dbb92d899b0ab0e3b484027a04a3a7375f2b5c57fff86059d46d96107198197"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
