class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.12/grove-darwin-arm64.tar.gz"
      sha256 "e070aabc0ac90284e67271df8f49307228518aab1e97301844512be08a1a5ed8"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.12/grove-darwin-x64.tar.gz"
      sha256 "0165f8471a8ae0776d6c83c48982fda45615d6ba242dae4fbf4a549688f89ca5"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.12/grove-linux-x64.tar.gz"
    sha256 "41c1b22b8dbd4e9f648e9e4b0cafcb73fc70559832ca1c92e89c1d9e1226e621"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
