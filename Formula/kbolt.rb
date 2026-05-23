class Kbolt < Formula
  desc "Local-first retrieval engine for notes and docs"
  homepage "https://github.com/h3nock/kbolt"
  version "0.1.7"
  license "MIT"
  depends_on "llama.cpp"

  on_macos do
    on_arm do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.7/kbolt-v0.1.7-macos-aarch64.tar.gz"
      sha256 "997c57ad2eda565e2a75c037a5abf3be3056967b62585327d40cbe24d96ad9df"
    end

    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.7/kbolt-v0.1.7-macos-x86_64.tar.gz"
      sha256 "0a0589527835e08dc545380d2213c2c704f2fa3162e79de3e1c90ea26fdbf04f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.7/kbolt-v0.1.7-linux-x86_64.tar.gz"
      sha256 "1d4f45d5babaee1f5b541f48889219feeca45c87366e4f9689b61f7d7eb4a7ac"
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
