class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.20/grove-darwin-arm64.tar.gz"
      sha256 "9605f59ced6084ca28ebef3dc6e1a66553f1bedb35dfe8c5d1ca483a76492918"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.20/grove-darwin-x64.tar.gz"
      sha256 "5d37ff27d6269b275f90d2bae4ebd79676a8a4eb9cc66f48955b5ef2eccf5dd1"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.20/grove-linux-x64.tar.gz"
    sha256 "f8a39a39b32028d11224b048bc9288bc133eda6e532d0033d743f65241367fd3"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
