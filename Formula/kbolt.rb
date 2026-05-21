class Kbolt < Formula
  desc "Local-first retrieval engine for notes and docs"
  homepage "https://github.com/h3nock/kbolt"
  version "0.1.6"
  license "MIT"
  depends_on "llama.cpp"

  on_macos do
    on_arm do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.6/kbolt-v0.1.6-macos-aarch64.tar.gz"
      sha256 "e4459d7f1456f648700d8d37c5b3545e77637e3d340ba855d85fc034d33365fb"
    end

    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.6/kbolt-v0.1.6-macos-x86_64.tar.gz"
      sha256 "73ddcc5b6b857c11d2e502af24961dd0e7b669b22af85150d7c428ea7247864d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.6/kbolt-v0.1.6-linux-x86_64.tar.gz"
      sha256 "71e42921377acdbbf50e27d864d1dd1d8dc4a0122f434ea20b65b1b07a5f50db"
    end
  end

  def install
    bin.install "kbolt"
    prefix.install "README.md", "LICENSE"
  end

  test do
    assert_match "local-first retrieval engine", shell_output("#{bin}/kbolt --help")
  end
end
