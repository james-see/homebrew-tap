# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.33.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.3/unicorn-darwin-amd64.tar.gz"
      sha256 "6692e414666bd60a1cd7d711ed0436eb908de9cb1b0366165b210edc8217cc23"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.3/unicorn-darwin-arm64.tar.gz"
      sha256 "61981c06f93003247f026bb4e37fdfb0721f07ca2a48b2dc6afafe3238e4c166"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.3/unicorn-linux-amd64.tar.gz"
      sha256 "cac1ca904dc2065257c2af3144258e4bcd7231024310bc32585e7986e51a62ce"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.3/unicorn-linux-arm64.tar.gz"
      sha256 "8e502c6d1eb8e7c72bfd7326864cd5106747c2736467c31c94106f7f250c386c"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
