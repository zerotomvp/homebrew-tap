class Parley < Formula
  desc "Durable, role-addressed messaging for independent agent sessions"
  homepage "https://github.com/zerotomvp/parley-cli"
  version "1.3.2"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.3.2/parley-1.3.2-osx-arm64.tar.gz"
      sha256 "f4269141fa8b4df447b852e60a3183f12e2f2830cd97932fb4acfdc29298ec82"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.3.2/parley-1.3.2-osx-x64.tar.gz"
      sha256 "8e1a72b68adc57a27a94b42d4ec47594be96fa01d95bc6177e4d1a037dd89310"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.3.2/parley-1.3.2-linux-arm64.tar.gz"
      sha256 "8c888f04839d44131c98b5eb746f174a8574966119bc11ad93e869e4209bf3d4"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.3.2/parley-1.3.2-linux-x64.tar.gz"
      sha256 "ad62d34da14ba25746b33748296027d11d0688a04d7a6339caa6746722e522e8"
    end
  end

  def install
    bin.install "parley"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parley --version")
  end
end
