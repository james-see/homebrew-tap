# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.35.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.35.0/unicorn-darwin-amd64.tar.gz"
      sha256 "ddcb29b79a5bb8b85b0bbadbb289f71e4d2a42ecbe4f3749a2517b7f8f6518a3"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.35.0/unicorn-darwin-arm64.tar.gz"
      sha256 "563106598fbba4c6f40b54287ae3351e6768800bef9bfeaf3c301bf0fa03b24a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.35.0/unicorn-linux-amd64.tar.gz"
      sha256 "cab007bfaf4955a8e005212ce2ba6c7328022fa56479ba2756e05ec651d82c27"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.35.0/unicorn-linux-arm64.tar.gz"
      sha256 "b80f41aed38762177c0ff226f135f19c00a6aab4b39df39b879c0fe0d767aaee"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
