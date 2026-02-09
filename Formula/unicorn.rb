# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.9.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.3/unicorn-darwin-amd64.tar.gz"
      sha256 "ba2cfbd90e784d3709811b2ab71291e7d35ac7bb4eb9b1bb648e9c935d13391b"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.3/unicorn-darwin-arm64.tar.gz"
      sha256 "bb55813cd3093fa3bccb3bdf235646f16c2a1770a022c7b9c39be9fe8934f87b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.3/unicorn-linux-amd64.tar.gz"
      sha256 "ec80e5e30b4c6d52887ac04da060f2605eb7550fdedf34cb6861c3821b6dd563"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.3/unicorn-linux-arm64.tar.gz"
      sha256 "31af105e3dd0bae343b61600c9cbf524b0db1556472335369612fb2f6dc65f00"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
