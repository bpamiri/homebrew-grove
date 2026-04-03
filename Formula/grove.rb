class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.0/grove-darwin-arm64.tar.gz"
      sha256 "a3333fed6514bf65e3e74572b9bbd36da061c97e008177f0ed065056d5adb572"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.0/grove-darwin-x64.tar.gz"
      sha256 "418c6dbf3b1b25a3f8f8d34722f06d347fb4ce64c356154291c502bad0607c80"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.0/grove-linux-x64.tar.gz"
    sha256 "4df10150b284bba66848e7c1e50fe0450bc8c17e6ec01c985341a723638e7fc3"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
