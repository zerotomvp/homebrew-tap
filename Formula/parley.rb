class Parley < Formula
  desc "Durable, role-addressed messaging for independent agent sessions"
  homepage "https://github.com/zerotomvp/parley-cli"
  version "1.1.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.1.1/parley-1.1.1-osx-arm64.tar.gz"
      sha256 "daf33560e96f3744bcffa5a0262b62af7c923c0097581955ca3bab7c8469cc32"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.1.1/parley-1.1.1-osx-x64.tar.gz"
      sha256 "3149e87844a6577aa6f51afd37ba8064664f9fe4f06f1860258f2edcaccfd5d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.1.1/parley-1.1.1-linux-arm64.tar.gz"
      sha256 "cb6c8a004ead0edb08ce5620d961f53bc617ffd2ba8188e5bb2419608d8e772c"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.1.1/parley-1.1.1-linux-x64.tar.gz"
      sha256 "dc80c085dab9088ba81824a4dbfa8442bd1bc19d39f157eeb525bc5a6dda67ad"
    end
  end

  def install
    bin.install "parley"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parley --version")
  end
end
