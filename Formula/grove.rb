class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.33/grove-darwin-arm64.tar.gz"
      sha256 "c8eb59e045acfa232524b9324d8f6dfdfea795f2d80d91ffe983725e19822f96"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.33/grove-darwin-x64.tar.gz"
      sha256 "046fc48bfd0692c771d2a7e5aaaf017720b0be2ac46aed75a277e789dc456a11"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.33/grove-linux-x64.tar.gz"
    sha256 "827c4477820d4db140ae9730e137084114835267057309fd193de0d7b4ad4635"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
