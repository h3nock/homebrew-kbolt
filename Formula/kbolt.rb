class Kbolt < Formula
  desc "Local-first retrieval engine for notes and docs"
  homepage "https://github.com/h3nock/kbolt"
  license "MIT"
  version "0.1.3"
  depends_on "llama.cpp"

  on_macos do
    on_arm do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.3/kbolt-v0.1.3-macos-aarch64.tar.gz"
      sha256 "62cf7c335d39dcd09876a082aa13acb70c60774f27ac9fe645a9a2547e61ff4a"
    end

    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.3/kbolt-v0.1.3-macos-x86_64.tar.gz"
      sha256 "4f05ac767ad7adf21bcbaaf70427f032a08721345dc347e25d8ba09025429ae3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.3/kbolt-v0.1.3-linux-x86_64.tar.gz"
      sha256 "363875bf343d929935455ffe7a0770be3baff7381384602f69fb97ce2155cdbf"
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
