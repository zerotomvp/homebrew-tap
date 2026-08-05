class Parley < Formula
  desc "Durable, role-addressed messaging for independent agent sessions"
  homepage "https://github.com/zerotomvp/parley-cli"
  version "1.1.2"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.1.2/parley-1.1.2-osx-arm64.tar.gz"
      sha256 "3d1faaa7c4a157a65e31b8539b660d5815340e37e4fd0392495d2f74cb98cafd"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.1.2/parley-1.1.2-osx-x64.tar.gz"
      sha256 "adcab3a2d2716032bbe5e089c18b24ec6874fbfde50e9ad0bc0c6b13e04425d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.1.2/parley-1.1.2-linux-arm64.tar.gz"
      sha256 "14351b01ed5776cf26e9d6c76c301685994710d1dc35ea9b25c2b2fcbe8ad5b9"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.1.2/parley-1.1.2-linux-x64.tar.gz"
      sha256 "6e87f3879f863d338da2668f5ef1ad6fd96764240938a2acf3376ed84b640487"
    end
  end

  def install
    bin.install "parley"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parley --version")
  end
end
