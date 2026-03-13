# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.32.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.1/unicorn-darwin-amd64.tar.gz"
      sha256 "c9891456736f56eb0e530fb6c1efa77ebfc2f60ef56fadb1ca41b903d3867036"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.1/unicorn-darwin-arm64.tar.gz"
      sha256 "b827513ebdcdfb2310f053ca8af4f2cd60a05d62668cd29662fb21f1060170d2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.1/unicorn-linux-amd64.tar.gz"
      sha256 "0d2d4a8f608b6466f686e53def9f4ff85aa86482d41fe524a011943cf20805c9"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.1/unicorn-linux-arm64.tar.gz"
      sha256 "a1b60d4d349c19f985506594657448b40881dc89b4072f6804086c5a5dc9c330"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
