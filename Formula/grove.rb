class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.19/grove-darwin-arm64.tar.gz"
      sha256 "8fd71aa4290048ca3dc6768cf1ba6d79386bf1788600b5b0be8214e3c2020428"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.19/grove-darwin-x64.tar.gz"
      sha256 "e3ca8e6a1ac728072f670c40b7e6bd8f3c166a3a5432aa454fc1bc53ac12182d"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.19/grove-linux-x64.tar.gz"
    sha256 "cc4e797fdda1422c56a421006a3c0d734254e80129cad915f3fd3b71fc13fa43"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
