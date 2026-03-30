class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.10/grove-darwin-arm64.tar.gz"
      sha256 "09a961397d70f7f7d20e5fe0c606b2d5434b9a00a3343d08e30a5fd276ec9911"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.10/grove-darwin-x64.tar.gz"
      sha256 "6b30da5d1c0a535884e9448791f2b711f0e086e7a8cca7a5d5f01082cf1acb7c"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.10/grove-linux-x64.tar.gz"
    sha256 "e8f37618bed7283332aed46f59faa1f6890af970392d660e861852079beb6bb3"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
