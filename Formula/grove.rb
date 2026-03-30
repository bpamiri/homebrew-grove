class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.3/grove-darwin-arm64.tar.gz"
      sha256 "46511a59de6f72ea9a812997c6d948c6cbc70ad2b74185fe3b4b36f7ced86979"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.3/grove-darwin-x64.tar.gz"
      sha256 "93d1dd2ff8bcd4fdf8e98db137d7626255c189636ed6cb6339d06e771e6296eb"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.3/grove-linux-x64.tar.gz"
    sha256 "cc0040cf62b204d16809bd80aae1d36d972c9e2ea4b363fb2f867af152d29cf8"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
