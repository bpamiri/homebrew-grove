class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.11/grove-darwin-arm64.tar.gz"
      sha256 "6ba33e5fbedde26d1241d68d7dece189a7ed4cd54f4c840c9afcd4bf51a021da"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.11/grove-darwin-x64.tar.gz"
      sha256 "41f99cdccb5a7665b1f59de7cc95a7d9ec1449f4279e9f8419b94af1a2b70ec5"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.11/grove-linux-x64.tar.gz"
    sha256 "cfbadef87200d236e94b9fe42c3cb9ff18d3fb5a849541ef80a01b6cb25d65b7"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
