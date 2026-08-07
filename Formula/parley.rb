class Parley < Formula
  desc "Durable, role-addressed messaging for independent agent sessions"
  homepage "https://github.com/zerotomvp/parley-cli"
  version "1.3.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.3.0/parley-1.3.0-osx-arm64.tar.gz"
      sha256 "20c9324a803aed2fa0f1bf1cde6034edff23bb4abc7de9ee4456e48070a6c4cc"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.3.0/parley-1.3.0-osx-x64.tar.gz"
      sha256 "ad9b89aefb7015d5607f625b647eb22668759072c46b28299f58d5faa1c79780"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.3.0/parley-1.3.0-linux-arm64.tar.gz"
      sha256 "307600a375d30b58a23259beccee437325ce782d70b174d554f679ad5b6955f4"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v1.3.0/parley-1.3.0-linux-x64.tar.gz"
      sha256 "79b4fcdbf9d04acd8a6a8226f043d628a3ccf7c2f9df3fb3242562b3c80749e0"
    end
  end

  def install
    bin.install "parley"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parley --version")
  end
end
