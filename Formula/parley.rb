class Parley < Formula
  desc "Durable, role-addressed messaging for independent agent sessions"
  homepage "https://github.com/zerotomvp/parley-cli"
  version "2.1.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v2.1.0/parley-2.1.0-osx-arm64.tar.gz"
      sha256 "a66a584b136f7330acf7f87b5d92f716142d1be5dd14a75270ac2997a54e8c24"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v2.1.0/parley-2.1.0-osx-x64.tar.gz"
      sha256 "6ec143d0639f85dc730a39415c3aa34ed9195f82d356b93bb01f551ebbcd0906"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v2.1.0/parley-2.1.0-linux-arm64.tar.gz"
      sha256 "ba27cdb3746003c6b2de6ab584c2fd0b3de4daa73f3cb8774349d19467d9707a"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v2.1.0/parley-2.1.0-linux-x64.tar.gz"
      sha256 "553be44d36c6d235bd0ea6c70a8df44c8e68108859b243e7f167d319632f2c44"
    end
  end

  def install
    bin.install "parley"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parley --version")
  end
end
