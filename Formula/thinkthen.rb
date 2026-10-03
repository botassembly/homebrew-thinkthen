class Thinkthen < Formula
  desc "Semantic judgments over text"
  homepage "https://thinkthen.dev"
  version "0.1.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/botassembly/thinkthen/releases/download/v0.1.1/thinkthen-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "b064a172bee841525b7c16f06517b31216f1466f1c68933ccac101b0a1103381"
    else
      url "https://github.com/botassembly/thinkthen/releases/download/v0.1.1/thinkthen-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "f25ba4cc08a6bdd868a7b70e26905f7ccd108c29a076e7e6a7f6b9fb7294f6d1"
    end
  elsif Hardware::CPU.arm?
    url "https://github.com/botassembly/thinkthen/releases/download/v0.1.1/thinkthen-0.1.1-aarch64-unknown-linux-musl.tar.gz"
    sha256 "1bfd857a0abbd86c66584eaf0a3189f7aa47f45a353106923d0a9bf577b78285"
  else
    url "https://github.com/botassembly/thinkthen/releases/download/v0.1.1/thinkthen-0.1.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "cf587b7e0278d318f1a6306456109302b214c3b0cd9ba65b3169605353006dba"
  end

  def install
    bin.install "thinkthen"
  end

  test do
    assert_match "thinkthen 0.1.1", shell_output("#{bin}/thinkthen --version")
  end
end
