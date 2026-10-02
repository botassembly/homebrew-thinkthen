class Thinkthen < Formula
  desc "Semantic judgments over text"
  homepage "https://thinkthen.dev"
  version "0.1.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/botassembly/thinkthen/releases/download/v0.1.0/thinkthen-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "28acd50d9540838b6aec64646df40a7c9f8cd5383284e5c33e8082432f95e413"
    else
      url "https://github.com/botassembly/thinkthen/releases/download/v0.1.0/thinkthen-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "b2b2ab7d32d698f8f394235ec58a8d91e867ed2df3dd8d53cc6975f8d64aa073"
    end
  elsif Hardware::CPU.arm?
    url "https://github.com/botassembly/thinkthen/releases/download/v0.1.0/thinkthen-0.1.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "d9bf77456ed2c7a6ee5bd51fdd1422de2643322c6774f910e70f90d83d7c512b"
  else
    url "https://github.com/botassembly/thinkthen/releases/download/v0.1.0/thinkthen-0.1.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a4f726ce863588a7c60e4348dc6e3ef0b80bcb99d55159d7efd24ce80dbfe897"
  end

  def install
    bin.install "thinkthen"
  end

  test do
    assert_match "thinkthen 0.1.0", shell_output("#{bin}/thinkthen --version")
  end
end
