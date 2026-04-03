class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.32/grove-darwin-arm64.tar.gz"
      sha256 "485f32424cce87edac189253bde7b66429602d360cd7f75bc6307fb732b13b6c"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.32/grove-darwin-x64.tar.gz"
      sha256 "23d2e64f60edadd1eb82cb3f75050317cb071988d579052bd3cf86e42f452054"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.32/grove-linux-x64.tar.gz"
    sha256 "cb6690b34df6eaf3c9fdf23b845a58c49544efb0246fee3e439e88c71bc327fa"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
