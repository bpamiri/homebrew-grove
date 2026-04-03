class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.2/grove-darwin-arm64.tar.gz"
      sha256 "39f325507592cd703f00ed723a9c499ad59ce1d1f96fc17db837577c8f1ef007"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.2/grove-darwin-x64.tar.gz"
      sha256 "6e4036b89c09d131219a091dedb018439754c6f8fda3c40f7b39918bdc6ddd74"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.2/grove-linux-x64.tar.gz"
    sha256 "5036049bfb891de95cd6cb9c99c776616834db5431ce6c26f5241e05cb962825"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
