class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.8/grove-darwin-arm64.tar.gz"
      sha256 "9b5ccbc7c6c2728628632ebe0bc3dfd4d4ff150f6d5ae19328c476c6102e7a2e"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.8/grove-darwin-x64.tar.gz"
      sha256 "1f32ed391ae32edf1fcee0064dfd9c9f510c36e3a9485a5e77402abf43b89c00"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.8/grove-linux-x64.tar.gz"
    sha256 "5cc4d93e19ec235548fed7b240edc26423a05acb9ffcc375940956e85a5c6aca"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
