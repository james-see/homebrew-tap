# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.2.0/unicorn-darwin-amd64.tar.gz"
      sha256 "889a167b9cb7cd99d2ddd5413ee13edc6e8fcb3e819d40c52092d6ce9ee773d3"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.2.0/unicorn-darwin-arm64.tar.gz"
      sha256 "67c02d40ea08a73b60256c3484488a4ea6c4b0897e839891fc46e26db182d700"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.2.0/unicorn-linux-amd64.tar.gz"
      sha256 "a146a51ef5086757a808e4607e5244a9772868022287147d5c83dba7f52a1271"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.2.0/unicorn-linux-arm64.tar.gz"
      sha256 "f99e4464d87b61959b047fd271ecb64da885ac2f258508aeb68156dab2a9da13"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
