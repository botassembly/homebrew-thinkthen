class Thinkthen < Formula
  desc "Typed questions about records"
  homepage "https://github.com/botassembly/thinkthen"
  version "0.2.0"
  license "MIT"
  if OS.mac?
    depends_on arch: :arm64
    depends_on macos: :sequoia
    url "https://github.com/botassembly/thinkthen/releases/download/v0.2.0/thinkthen-0.2.0-macos-arm64.tar.gz"
    sha256 "1f7f2077544790217cee46c02457549cd7f0978d66d3559e0ae75833683143ad"
  elsif Hardware::CPU.arm?
    url "https://github.com/botassembly/thinkthen/releases/download/v0.2.0/thinkthen-0.2.0-linux-arm64.tar.gz"
    sha256 "f69755953441720156d003430bfc04e66b058ee5630b71326a959ece0af34abe"
  else
    url "https://github.com/botassembly/thinkthen/releases/download/v0.2.0/thinkthen-0.2.0-linux-x86_64.tar.gz"
    sha256 "2d18c0c788f3db2502ae16efee4fc8a48c6b9225dd8eccec4f1ba370d518c186"
  end
  def install
    bin.install "thinkthen"
    man1.install "thinkthen.1"
    pkgshare.install "THIRD-PARTY-NOTICES"
  end
  test do
    assert_match "thinkthen 0.2.0", shell_output("#{bin}/thinkthen --version")
  end
end
