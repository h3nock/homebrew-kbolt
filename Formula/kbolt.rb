class Kbolt < Formula
  desc "Local-first retrieval engine for notes and docs"
  homepage "https://github.com/h3nock/kbolt"
  version "0.1.4"
  license "MIT"
  depends_on "llama.cpp"

  on_macos do
    on_arm do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.4/kbolt-v0.1.4-macos-aarch64.tar.gz"
      sha256 "c89eaad24a335e39e5786442bc866af5dc24c307644ff0118d0b0b933f61d8c9"
    end

    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.4/kbolt-v0.1.4-macos-x86_64.tar.gz"
      sha256 "eb1780b52dcec411ea7fd0a6b2cd7e7fa601cf65a098fe6fd198065f27c2f595"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.4/kbolt-v0.1.4-linux-x86_64.tar.gz"
      sha256 "c085d1a656d193be5767768627d4a2ece2c878c2b8fcf6155a590d11ae899ea2"
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
