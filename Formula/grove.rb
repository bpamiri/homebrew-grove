class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.28/grove-darwin-arm64.tar.gz"
      sha256 "9611c85368d2c3062fbae4cab3ad15d9b9aec604bca03e63e7a219e39310db54"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.28/grove-darwin-x64.tar.gz"
      sha256 "a94d45f7e14b935eaf0187182e0db26bd248363eae75ee7ef29819711a98a142"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.28/grove-linux-x64.tar.gz"
    sha256 "22b02e697e89c0b41f6bad5b93e51efd85bfebc3c62991e0aaf24a9a377b55dd"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
