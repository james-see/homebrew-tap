# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.9.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.2/unicorn-darwin-amd64.tar.gz"
      sha256 "0d203ccc4c4d5ade35456b4bcb33076cdf6aecc4a1881ece2254e84b5b51d903"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.2/unicorn-darwin-arm64.tar.gz"
      sha256 "89040af69bda66c4ff8be5d10488e20f2bb66d1357c05dfc4bf99fb7fed2333d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.2/unicorn-linux-amd64.tar.gz"
      sha256 "f81d7ac982216b1c801e0133608dd01bbed5a87b6e6ce6b7570830e33611877f"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.2/unicorn-linux-arm64.tar.gz"
      sha256 "111830365a31812df5a08b4947cd43c0e2055c3e3ae3b0b9c4a4ec326ad0478f"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
