class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.18/grove-darwin-arm64.tar.gz"
      sha256 "f8c0a3008a423ea0c8369ef00dc00e43e9fa293c9d5d97cff3b48e94cafada0a"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.18/grove-darwin-x64.tar.gz"
      sha256 "f24330747e794da3496d024d5afb4b150d05005dfa296e33493b1ce79830ef1c"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.18/grove-linux-x64.tar.gz"
    sha256 "f1ea018acc90f578e13653f069d36f0b4704c151cdd2c395daa5a082430ae51b"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
