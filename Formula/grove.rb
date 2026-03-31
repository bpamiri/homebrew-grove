class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.1.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.1.27/grove-darwin-arm64.tar.gz"
      sha256 "874b9fcadcede77d8ccb094f894cb823831887d3b73ddfb99277058a0a6982e9"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.1.27/grove-darwin-x64.tar.gz"
      sha256 "cdd31b84e871d3ee5a5ea7f51407500448a4949e42485edc71e2728ac661ee3c"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.1.27/grove-linux-x64.tar.gz"
    sha256 "2a678fac60523981f199f438ae5728b11c860f9444f054b14af872ca38570dad"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
