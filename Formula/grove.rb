class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.1/grove-darwin-arm64.tar.gz"
      sha256 "f433787b23b82363ba90bd81ac4c3e20229e5cfd2c3439a4ac4a655d0ed8ea52"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.1/grove-darwin-x64.tar.gz"
      sha256 "db022354b0607d89939ac429445edec46a8bd20ef9e30f7bdceb10e766ab5a30"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.1/grove-linux-x64.tar.gz"
    sha256 "722b8fd71078f80c757fb9a89789fb2a4bfcb6ef9a3ed18e3a0c0d82b90774c7"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
