# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.9.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.4/unicorn-darwin-amd64.tar.gz"
      sha256 "c8d54bfc6124ce6c93ba9104ff12124c33914bb22c8bc221113cffd23135b471"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.4/unicorn-darwin-arm64.tar.gz"
      sha256 "fee2a54a939d87127bec3b82dd7f61a468fa573122d9e069ae6a152524e75df2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.4/unicorn-linux-amd64.tar.gz"
      sha256 "c8d49aa95d2e8bd2d7daadb4db51cf7dcf90607760454a9a3ec56c37001f9bb5"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.4/unicorn-linux-arm64.tar.gz"
      sha256 "8e40852fc7fdfa053b4e20d681fc2506d9bb8ba56b8901e5157692fb686ea07f"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
