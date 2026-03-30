class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.16/grove-darwin-arm64.tar.gz"
      sha256 "4c2fd92e93c0233ae97bbe6a17e0a0c349e647674068d4af60ec2aa86db77cf8"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.16/grove-darwin-x64.tar.gz"
      sha256 "1865aa4a7548a150eb3d2c93211f1d1b290c369f67588446cc1bd7fd1cac37d7"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.16/grove-linux-x64.tar.gz"
    sha256 "111273d249761b899dd7a1dfee15f076537e400ea6d5b73eb8f9c73527d53988"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
