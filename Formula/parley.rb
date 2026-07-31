class Parley < Formula
  desc "Durable, role-addressed messaging for independent agent sessions"
  homepage "https://github.com/zerotomvp/parley-cli"
  version "1.0.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.0.0/parley-1.0.0-osx-arm64.tar.gz"
      sha256 "afeaa8a7cbeb4b338ce5f50e56b9ce1c921367fab2e86a682e9378957649cc51"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.0.0/parley-1.0.0-osx-x64.tar.gz"
      sha256 "d8582e19417e4b3d613d1e5734969507d3a8e9c0d87e695295c03a0744e8b27d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.0.0/parley-1.0.0-linux-arm64.tar.gz"
      sha256 "5071b0f9d7234187ddab0285df119a9889de828161ffc3611422cf62fd9b975a"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.0.0/parley-1.0.0-linux-x64.tar.gz"
      sha256 "417d20eee2f1044f2a4032b2648dda6e42a17f5cf2cc4a3a515e9364075bfc5e"
    end
  end

  def install
    bin.install "parley"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parley --version")
  end
end
