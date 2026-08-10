class Parley < Formula
  desc "Durable, role-addressed messaging for independent agent sessions"
  homepage "https://github.com/zerotomvp/parley-cli"
  version "2.1.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v2.1.1/parley-2.1.1-osx-arm64.tar.gz"
      sha256 "4071a2d21cef6a31c6c400638bd269fb07e21b1a3c39bae3dc5201a1e68829a0"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v2.1.1/parley-2.1.1-osx-x64.tar.gz"
      sha256 "6be5638cfa584ec9d15513c41f7d74418d7367569df295dd2f2f9d1f55fb3c43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v2.1.1/parley-2.1.1-linux-arm64.tar.gz"
      sha256 "9087ababbc641332c67e647bf18a349f545ee6bd0959ef8086a1080179f7a442"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v2.1.1/parley-2.1.1-linux-x64.tar.gz"
      sha256 "980e8592b56e368104b45cc642fe027e66811df22c0b22386fa4109a89ae03b8"
    end
  end

  def install
    bin.install "parley"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parley --version")
  end
end
