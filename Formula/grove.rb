class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.4/grove-darwin-arm64.tar.gz"
      sha256 "77b500f739df650ad897f1a73b46ba40336e80f3fcd37a15227b79ac1fbf196d"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.4/grove-darwin-x64.tar.gz"
      sha256 "822d1cea52656d8dcdb113435811f5aa56e6f93e984b8da07b8fc703f5e6cc09"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.4/grove-linux-x64.tar.gz"
    sha256 "73e8598bd3c3671054e62a6876447d8d4c699a9b60a9eeaa0add1fd5a9d57d56"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
