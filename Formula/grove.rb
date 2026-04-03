class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.34/grove-darwin-arm64.tar.gz"
      sha256 "a7d189360fe7b15be310dcc6058a1a3acdb22256eee8ba041a06ea3e5620b7e2"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.34/grove-darwin-x64.tar.gz"
      sha256 "4bbefea9724eb3f73889f9d9571353a8d5791f9aa9c83de77850540d44af2919"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.34/grove-linux-x64.tar.gz"
    sha256 "ab8a68a2fc8212731190f054c7f5598c21bc947990b9a36768ec93e713ca1fcd"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
