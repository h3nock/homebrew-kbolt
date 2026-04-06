class Kbolt < Formula
  desc "Local-first retrieval engine for notes and docs"
  homepage "https://github.com/h3nock/kbolt"
  license "MIT"
  depends_on "llama.cpp"

  on_macos do
    on_arm do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.0/kbolt-v0.1.0-macos-aarch64.tar.gz"
      sha256 "fce4593dedbbbf40f5964b3e2c9ffcae21e3fbed9d63951bb70168ad58a3796a"
    end

    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.0/kbolt-v0.1.0-macos-x86_64.tar.gz"
      sha256 "1e8598f2ec84ca3819ae061acbe2705331fab275865ec4722010770d26631cf4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.0/kbolt-v0.1.0-linux-x86_64.tar.gz"
      sha256 "dc4c6aec17945e5a800054d03d6d25c4acfcf089170941a93eabbe98ab43a974"
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
