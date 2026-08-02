class Parley < Formula
  desc "Durable, role-addressed messaging for independent agent sessions"
  homepage "https://github.com/zerotomvp/parley-cli"
  version "1.1.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.1.0/parley-1.1.0-osx-arm64.tar.gz"
      sha256 "c23440be4b759b29a0a585e131aafc3aea0265354b233340076a8b816559cd26"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.1.0/parley-1.1.0-osx-x64.tar.gz"
      sha256 "9059addc7f29f897b3054f2fc656c75626595717833c438816f753c3eaa9a01d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.1.0/parley-1.1.0-linux-arm64.tar.gz"
      sha256 "af1738c57b0aae0ced1edc766c61526a710b3d6c8b346b36baf51d1b67d28418"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.1.0/parley-1.1.0-linux-x64.tar.gz"
      sha256 "a95c01d509c8494e3206de082ff9e46e25dfbcde3905b6ffd3a86f1113e06624"
    end
  end

  def install
    bin.install "parley"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parley --version")
  end
end
