class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.12/grove-darwin-arm64.tar.gz"
      sha256 "c20849d5c1f37322a9d68b4fd0931d37b06ba3031bba94d279bc8e51a8a33a3c"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.12/grove-darwin-x64.tar.gz"
      sha256 "6d51da03b7ccdb7b98da5b13142af13e06346d0ecf9b0f34dc4e4c3efb92261d"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.12/grove-linux-x64.tar.gz"
    sha256 "7272e1c641951a0235893426550fc407bbc571116653cfb0e181a812bdd0cd18"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
