class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.5/grove-darwin-arm64.tar.gz"
      sha256 "7995ff1306606483a01e979ef904de13e5d9ade1acc7d04bebb3da573a041abf"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.5/grove-darwin-x64.tar.gz"
      sha256 "a850d475f90b6376b38e3d11c698aec07f467f3d5757af324cb4b8cfa55a4f08"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.5/grove-linux-x64.tar.gz"
    sha256 "062e81d0ff60852e6783df36eb7465bea1e1319a49db7f376f1ce7be3ed73441"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
