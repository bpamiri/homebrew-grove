class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.6/grove-darwin-arm64.tar.gz"
      sha256 "36f180c108258e7b79cf012b8d0e03335510cb4b669516cac462842158fd2128"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.6/grove-darwin-x64.tar.gz"
      sha256 "eec6164a9d49d53b127b4c40eb0b072b7731b5353c9bc9b63fe46a860404b5dd"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.6/grove-linux-x64.tar.gz"
    sha256 "0c3ceee7b46367c6dddefe3bcc3aedbacac1cb542283d18e744da8d56f4401b8"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
