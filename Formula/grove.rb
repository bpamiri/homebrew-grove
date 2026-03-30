class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.15/grove-darwin-arm64.tar.gz"
      sha256 "81d69976ee877c079272dbcb8e9ab8fbca4323488c7795c529546c0587478e70"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.15/grove-darwin-x64.tar.gz"
      sha256 "fffc830f5f42da6f83affc88f28c74cd40effeb0b5d49408de007fa6147a5adb"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.15/grove-linux-x64.tar.gz"
    sha256 "592e3265d34200b6dc7f873af72a77a24eea2b013515cf6c2907f29925b79ec7"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
