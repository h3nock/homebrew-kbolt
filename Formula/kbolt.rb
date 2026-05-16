class Kbolt < Formula
  desc "Local-first retrieval engine for notes and docs"
  homepage "https://github.com/h3nock/kbolt"
  version "0.1.5"
  license "MIT"
  depends_on "llama.cpp"

  on_macos do
    on_arm do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.5/kbolt-v0.1.5-macos-aarch64.tar.gz"
      sha256 "4072684a2fe9ec3f8d8cb026869e21ae6be2d492b88f51f43d44d2ccefc40c13"
    end

    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.5/kbolt-v0.1.5-macos-x86_64.tar.gz"
      sha256 "61493d8fc2d1429d7880470104f2e4e4e0f22b98d55d43514deb4f267c9e6efa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.5/kbolt-v0.1.5-linux-x86_64.tar.gz"
      sha256 "8f5e725f0b32fa5ac981cfeb6b892ecc41190ae135956199636daf2685ca3615"
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
