class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.7/grove-darwin-arm64.tar.gz"
      sha256 "fe125bcb2e7a79a3f6c76b922e7358e95b2ff8beef696ee95139e53ba175c147"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.7/grove-darwin-x64.tar.gz"
      sha256 "080774fe70cdce4e9587cd631bd22b79178102eb48918e7704d0b22bb13d4e7c"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.7/grove-linux-x64.tar.gz"
    sha256 "5cae9b1e8c38b2f92c22085eb2a2401ef287522bcb9f9067fc89bc1259661b3c"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
