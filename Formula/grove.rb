class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.5/grove-darwin-arm64.tar.gz"
      sha256 "0748d576e1059e9fae92b42a25622ae065c30fc66ad8405cc629402d57890bf0"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.5/grove-darwin-x64.tar.gz"
      sha256 "90d30a226c3d5a6fece010d3008a9aa2eab1f564990724609707cf64fb3d7367"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.5/grove-linux-x64.tar.gz"
    sha256 "d85c0511b884dcf1067a1d6325da75628490df232f1c31420baf0846bd915e7f"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
