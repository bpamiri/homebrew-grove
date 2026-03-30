class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.13/grove-darwin-arm64.tar.gz"
      sha256 "6575d7425d10f9b4bb766fd9a86efb07790c3226a06f7495750db882d189bb03"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.13/grove-darwin-x64.tar.gz"
      sha256 "b523d4a8359cafdbb4dbfe061ddf8fb11b50ae987ce96a0b7b152f5bf3478846"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.13/grove-linux-x64.tar.gz"
    sha256 "17a30519542838081cc280dbf4510733741c9b85697434d4736b10d4096d242c"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
