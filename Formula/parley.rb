class Parley < Formula
  desc "Durable, role-addressed messaging for independent agent sessions"
  homepage "https://github.com/zerotomvp/parley-cli"
  version "1.2.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.2.1/parley-1.2.1-osx-arm64.tar.gz"
      sha256 "eec66574fb0123725ca32b5580b8a59166950ea81535d70cc9f89637559250ae"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.2.1/parley-1.2.1-osx-x64.tar.gz"
      sha256 "6229aac9953088054d3a601fd4cbc7c6cb7c55f67ee8e58a4a290ac401be27e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.2.1/parley-1.2.1-linux-arm64.tar.gz"
      sha256 "74ff9ee5b4a16705831481e8c8787f9147e02b120fa12309f25ca871b2e67cb0"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.2.1/parley-1.2.1-linux-x64.tar.gz"
      sha256 "5cb05f25233e6bd0f9d6180ac03e50782e0a7af3bc695a7f744a37b32eefd08e"
    end
  end

  def install
    bin.install "parley"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parley --version")
  end
end
