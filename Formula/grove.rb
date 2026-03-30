class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.9/grove-darwin-arm64.tar.gz"
      sha256 "36a38082367b308f9e42766d4eb29e1bcbd1791d7b642120001ceb471d113234"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.9/grove-darwin-x64.tar.gz"
      sha256 "301303b9e710743d18a1ad04e4fdb30b25a0cb078e1f32d524dc2257e4353f5f"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.9/grove-linux-x64.tar.gz"
    sha256 "2d7a8769bf30f2d92b186c49df8bbff0fe25902c301e16cb12abbc45c93fccae"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
