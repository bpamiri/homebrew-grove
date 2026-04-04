class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.10/grove-darwin-arm64.tar.gz"
      sha256 "0758810d846d0841cded4f03922251c37dfa078b014e91676b558fe54dfb6863"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.10/grove-darwin-x64.tar.gz"
      sha256 "b3691b2b4e3f23ecb2c4cc848a4b7a9ccb054ff9fefd2fbb5220497da0c5009a"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.10/grove-linux-x64.tar.gz"
    sha256 "1d74546ff38be78b4b8c71b59dd551408aad8ef60c7af3854d95fad2471c279d"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
