class Parley < Formula
  desc "Durable, role-addressed messaging for independent agent sessions"
  homepage "https://github.com/zerotomvp/parley-cli"
  version "2.0.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v2.0.0/parley-2.0.0-osx-arm64.tar.gz"
      sha256 "a5322693e8bf6c398042248f0baf16ff3df19b04434663b42292ca384e6ba6e1"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v2.0.0/parley-2.0.0-osx-x64.tar.gz"
      sha256 "7ca511e3c7bc34d9ee20aa5585b2ff2e34e03241e1aef6dfa4ff2b2aee68ea96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zerotomvp/parley-cli/releases/download/v2.0.0/parley-2.0.0-linux-arm64.tar.gz"
      sha256 "c4422e654a29faf01f3f3a1486ae15e3da11e7600fb68acb5038738495b73105"
    else
      url "https://github.com/zerotomvp/parley-cli/releases/download/v2.0.0/parley-2.0.0-linux-x64.tar.gz"
      sha256 "ea496595548f9b5d95fbd17b75afc77b8a93384fa2a4c3bf000a4b04f0fe8202"
    end
  end

  def install
    bin.install "parley"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parley --version")
  end
end
