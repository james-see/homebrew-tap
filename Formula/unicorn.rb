# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.9.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.1/unicorn-darwin-amd64.tar.gz"
      sha256 "096a47aa26efb140d38593375d59b73516f116e689c5574e94b4ef5dffe72b40"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.1/unicorn-darwin-arm64.tar.gz"
      sha256 "f306ba56a1ce7ebbb8a812b65f83505eab7dba6e091eb0b279c5b21184e185c0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.1/unicorn-linux-amd64.tar.gz"
      sha256 "06c54c33a44e0b2948d8c3f2ed76afe70afeedf560ab1c4ccb4c6c749a7467f4"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.1/unicorn-linux-arm64.tar.gz"
      sha256 "d4efd11e480b85e25d126172d831c0b05d94cc62da66295c694d24a66ad560f8"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
