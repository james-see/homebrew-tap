# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.0/unicorn-darwin-amd64.tar.gz"
      sha256 "d6442230c6396b5118b9cad08ba4ca249b60ebcddcf702659cdac3121a13792d"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.0/unicorn-darwin-arm64.tar.gz"
      sha256 "5c47a928ebb1a16a918c011c8af37095166d3af46288bd170db35baaa0d43ebc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.0/unicorn-linux-amd64.tar.gz"
      sha256 "7dfb96168603446b9314845af255f53ec54b37589c7be0c53598311c1613deb6"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.0/unicorn-linux-arm64.tar.gz"
      sha256 "491fa81ec809e51c697463bea097df3753a10eb61bea17153a29ab36bfa3d888"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
