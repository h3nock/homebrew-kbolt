class Kbolt < Formula
  desc "Local-first retrieval engine for notes and docs"
  homepage "https://github.com/h3nock/kbolt"
  license "MIT"
  version "0.1.2"
  depends_on "llama.cpp"

  on_macos do
    on_arm do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.2/kbolt-v0.1.2-macos-aarch64.tar.gz"
      sha256 "5a07e2a3488323e4d9d6fe41494940ba8bd3bd570b22274964dba5b93dbb7576"
    end

    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.2/kbolt-v0.1.2-macos-x86_64.tar.gz"
      sha256 "241eb76d2503eab47deb6eae3e95d29f41363cde5ee3b1f506d53b2241c8c625"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/h3nock/kbolt/releases/download/v0.1.2/kbolt-v0.1.2-linux-x86_64.tar.gz"
      sha256 "78c5027550f0f32e06117f4eab3a4fad29b95aee2535ba13041bd39430ed71c0"
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
