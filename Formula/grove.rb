class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.31/grove-darwin-arm64.tar.gz"
      sha256 "4e813ab3e728f464c184ee15be335231d9972dae31a41fb42d7aebb055e4ea8a"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.31/grove-darwin-x64.tar.gz"
      sha256 "13e22ab3f77a0e634adf5976607116edc76f81a8de0c81b93cc70fc4e7510167"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.31/grove-linux-x64.tar.gz"
    sha256 "d6b1f5e3693fd05c69e448f576fafad1970ca585e9f3c8d13347f4927e9a667c"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
