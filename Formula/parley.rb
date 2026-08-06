class Parley < Formula
  desc "Durable, role-addressed messaging for independent agent sessions"
  homepage "https://github.com/zerotomvp/parley-cli"
  version "1.2.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.2.0/parley-1.2.0-osx-arm64.tar.gz"
      sha256 "4d66d55ed91065aa3775f6a1fca838d54555cd158c958c1a96e74ed1fc48cf00"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.2.0/parley-1.2.0-osx-x64.tar.gz"
      sha256 "897567185c86b5e9a3a026f06d99bc4d61cca43411215ef5aee27db0c216f9f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.2.0/parley-1.2.0-linux-arm64.tar.gz"
      sha256 "37684acbc380115657fc9eb2ebe50a71ce5c5ad3e9de5b53bc437d73e379eb6d"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.2.0/parley-1.2.0-linux-x64.tar.gz"
      sha256 "a22ab214ba129d168af700453a208899b43d3842c16f57665ecd41578658e509"
    end
  end

  def install
    bin.install "parley"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parley --version")
  end
end
