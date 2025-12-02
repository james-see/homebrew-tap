# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.4.0/unicorn-darwin-amd64.tar.gz"
      sha256 "e0ef1a658eb95aafd5eb8bbce72f5cbcb4f3bae5db2960563d20c19340e349e3"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.4.0/unicorn-darwin-arm64.tar.gz"
      sha256 "0d963d1b0ec7d5a0b620f8b10b178a38b808d4c4729e2b4def663925fad6000b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.4.0/unicorn-linux-amd64.tar.gz"
      sha256 "41a772f3413904a6e3d0512ddaefae9e8e506bde541521d901ee14883dcc936e"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.4.0/unicorn-linux-arm64.tar.gz"
      sha256 "49b01f2a97402836b67fc8cb562f7b27cff3c193d53cd124fcbb37ad7d0379f0"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
