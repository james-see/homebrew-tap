# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.3.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.3/unicorn-darwin-amd64.tar.gz"
      sha256 "0dd89948d58db9a89c77a1d6a3c08f7ba9ab08b5461221f9943ae7dc3b102541"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.3/unicorn-darwin-arm64.tar.gz"
      sha256 "5728d08b896db063143cc4236a7505b3cdf749a0e7bffa40243781942bb19e5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.3/unicorn-linux-amd64.tar.gz"
      sha256 "3687e228456af032de7670816a58e4aebedf2e1a951bbaddd186d3b4473c120c"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.3/unicorn-linux-arm64.tar.gz"
      sha256 "52d6e03d0799d3f0f577e668c5a067092cd158a4ab9023e5d9bed231ec6e50ac"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
