# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.32.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.0/unicorn-darwin-amd64.tar.gz"
      sha256 "28e677a735a608a4bca7a353c338e1f4d5ea1b5a41ad0b5f76faf8bb1f378723"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.0/unicorn-darwin-arm64.tar.gz"
      sha256 "5e48d88c676ed13a32c85b632d63181a23280626a06ab51ca7e05f1cf8a45811"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.0/unicorn-linux-amd64.tar.gz"
      sha256 "01a811010f5a30eb753266adec3f13c745ab75a7ed2090ac66aa35a108bf67c8"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.0/unicorn-linux-arm64.tar.gz"
      sha256 "200f75e18cd4236c11bb00125d227e63bb9d880fdfc6a3a4bbad83ebb91d0b3f"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
