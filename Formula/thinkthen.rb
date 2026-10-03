class Thinkthen < Formula
  desc "Semantic judgments over text"
  homepage "https://thinkthen.dev"
  version "0.1.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/botassembly/thinkthen/releases/download/v0.1.2/thinkthen-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "96e7b848f043cd6a3134e3dd1ae936fc9e3325de9edd370b0a644146e05e8b4a"
    else
      url "https://github.com/botassembly/thinkthen/releases/download/v0.1.2/thinkthen-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "8dd6e318565feef9644bb31d2fb03c7fbf4c9663a18a6963aa4fe1df47b347cf"
    end
  elsif Hardware::CPU.arm?
    url "https://github.com/botassembly/thinkthen/releases/download/v0.1.2/thinkthen-0.1.2-aarch64-unknown-linux-musl.tar.gz"
    sha256 "707e52beff8a4556474f10d474bfdc9865661224200181304650a2327ba716f0"
  else
    url "https://github.com/botassembly/thinkthen/releases/download/v0.1.2/thinkthen-0.1.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "e2e2c1444c59b54c747a27952a5027ff25216b0764230e66ee84e69e05e24349"
  end

  def install
    bin.install "thinkthen"
  end

  test do
    assert_match "thinkthen 0.1.2", shell_output("#{bin}/thinkthen --version")
  end
end
