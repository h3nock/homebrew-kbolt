class Kbolt < Formula
  desc "Local-first retrieval engine for notes and docs"
  homepage "https://github.com/h3nock/kbolt"
  version "0.1.8"
  license "MIT"
  depends_on "llama.cpp"

  on_macos do
    on_arm do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.8/kbolt-v0.1.8-macos-aarch64.tar.gz"
      sha256 "11d3e8d0e8bc38cdca420ec0e710ff4b0db2cc0557ed97af372c5b2fdc5e8fcd"
    end

    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.8/kbolt-v0.1.8-macos-x86_64.tar.gz"
      sha256 "bca1a4bc369e1e340999948d9e1a7d29f9d46b0ff289df16e7175403cecfc84c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.8/kbolt-v0.1.8-linux-x86_64.tar.gz"
      sha256 "04da9c243ffdad4ca8914f4c97fca967f3459c59f517a7147f3b7e7f2c3856f2"
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
