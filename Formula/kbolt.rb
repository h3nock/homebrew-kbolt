class Kbolt < Formula
  desc "Local-first retrieval engine for notes and docs"
  homepage "https://github.com/h3nock/kbolt"
  license "MIT"
  depends_on "llama.cpp"

  on_macos do
    on_arm do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.1/kbolt-v0.1.1-macos-aarch64.tar.gz"
      sha256 "3a81a79756127e503ef7673cecdf240488274100a1ef88adcb9a576b1a8bbafd"
    end

    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.1/kbolt-v0.1.1-macos-x86_64.tar.gz"
      sha256 "e83dbd8f99a993f852674d43b638c8a77cdaf31eb8727a63841567c63d11b491"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.1/kbolt-v0.1.1-linux-x86_64.tar.gz"
      sha256 "4da3ee0706a957b9efbc68d2b47eb55baae9bec417093d6d1807f65745413f78"
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
