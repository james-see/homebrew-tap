# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.33.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.1/unicorn-darwin-amd64.tar.gz"
      sha256 "c51b4e3d6e62d8ce80f651a134dc7332ef9f5b363065bb06b3254c2973e28fda"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.1/unicorn-darwin-arm64.tar.gz"
      sha256 "80e70e48a76d57b20a815c5b22083db1736de56a21d7ea4ab3bbe4b07ad4b98b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.1/unicorn-linux-amd64.tar.gz"
      sha256 "f53a857992e07789ffc6c50114905e87087f396a3364393f4d06f6e1f5988f79"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.1/unicorn-linux-arm64.tar.gz"
      sha256 "b2f64f5c02e6f0d2f2ce725dc4284863205b53dbde81838d58ea0fc64e9f0545"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
