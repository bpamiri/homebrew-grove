class Grove < Formula
  desc "Conversational AI development orchestrator"
  homepage "https://github.com/bpamiri/grove"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpamiri/grove/releases/download/v0.2.3/grove-darwin-arm64.tar.gz"
      sha256 "67e9db258de625cc56def23ed7866b66fa68642275c9451f29d48c49816aee3f"
    else
      url "https://github.com/bpamiri/grove/releases/download/v0.2.3/grove-darwin-x64.tar.gz"
      sha256 "4c82cd74a3a63d01b1a6d9d9e13ef417b5ca30b85ccb72875ee95fe1ad909246"
    end
  end

  on_linux do
    url "https://github.com/bpamiri/grove/releases/download/v0.2.3/grove-linux-x64.tar.gz"
    sha256 "d86083d009088e920fc49fe7c972b62b38318c34d0e60f8a8f1e6a841030b6ea"
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --version")
  end
end
