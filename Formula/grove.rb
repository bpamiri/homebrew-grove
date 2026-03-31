class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.22/grove-darwin-arm64.tar.gz"
      sha256 "ee0294167abcf48e661ae30dac7f0d69949bf1a7073397557a9b1c96e2f9b87c"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.22/grove-darwin-x64.tar.gz"
      sha256 "4e5ae4673e95113d40b393431404052ef1478f2ea65d6d289fda8380e4dbdb73"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.22/grove-linux-x64.tar.gz"
    sha256 "351735aa2501f78c4a44417c5f1baeceb750316aba53d2b358da665428929224"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
