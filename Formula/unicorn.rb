# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.32.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.2/unicorn-darwin-amd64.tar.gz"
      sha256 "a470da07b1f973419ca9b847d5e77bbe44421d073449aac02ef98ba0ae8f0311"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.2/unicorn-darwin-arm64.tar.gz"
      sha256 "e3563e6a0f9b508f73f5abc3a168e58e019a30c280c1a93230917bb6896a17a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.2/unicorn-linux-amd64.tar.gz"
      sha256 "bd47381946c12d79b0bffde2b06f92ec1348df4e37cce70f5437d86fed62ae62"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.2/unicorn-linux-arm64.tar.gz"
      sha256 "e59788e5f5394665b2c4b9c9b3003c797283d22142accd89cfcbda9361241f37"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
