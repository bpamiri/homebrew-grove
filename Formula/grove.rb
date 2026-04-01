class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.29/grove-darwin-arm64.tar.gz"
      sha256 "d87d2d2ef0b93319ac4306eda61cf5ab2ea64161d724fb9d44ecc661e8c062cb"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.29/grove-darwin-x64.tar.gz"
      sha256 "d6cf90c7132dceb9bb0bba264e1ff5115954590a2cc96067e5a7a81871f742ca"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.29/grove-linux-x64.tar.gz"
    sha256 "2d36f7b00387ac0109cf127d9b9c8a81baa5368421771a3fac8db6b8c74a7c11"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
