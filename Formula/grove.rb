class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.11/grove-darwin-arm64.tar.gz"
      sha256 "35eda9e632bc4f19c233c15cdffb04a04e47fb5ff57683898c9f09f9d8697a69"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.11/grove-darwin-x64.tar.gz"
      sha256 "5927fbd505bdca08fd89243aa07776ae9dd02aaddfd74f69c361051241822649"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.11/grove-linux-x64.tar.gz"
    sha256 "e8013601c7f9c524487f759b8af3937e261589ec401e53fea9400be5890f148b"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
