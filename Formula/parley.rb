class Parley < Formula
  desc "Durable, role-addressed messaging for independent agent sessions"
  homepage "https://github.com/zerotomvp/parley-cli"
  version "1.3.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.3.1/parley-1.3.1-osx-arm64.tar.gz"
      sha256 "3b75d75159f4f0deb41a2f5b181e7b5e148de53ab6da758b47145789c2f2c339"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.3.1/parley-1.3.1-osx-x64.tar.gz"
      sha256 "5cb213229d85d933f859e710ef3a4f013ceec771a5e618c7d67cb6542e87ed7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.3.1/parley-1.3.1-linux-arm64.tar.gz"
      sha256 "8b748abd3db01f1e80314f079fb3b00f1fd3ff77d880339a400ba71a15b787e3"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.3.1/parley-1.3.1-linux-x64.tar.gz"
      sha256 "42e56ff00d24d78d77ba116ca745e939756abfa6e47db2d6e943fb87874219e2"
    end
  end

  def install
    bin.install "parley"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parley --version")
  end
end
