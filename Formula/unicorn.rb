# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.7.0/unicorn-darwin-amd64.tar.gz"
      sha256 "76fb91b72e8d56da78c87fd6478c11a33620d6b3b3d21222d8446209192099a6"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.7.0/unicorn-darwin-arm64.tar.gz"
      sha256 "8f81ee223a1d3c817fac2ede9a2a93c5e39b69ac3ce4a17247374851e737e7be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.7.0/unicorn-linux-amd64.tar.gz"
      sha256 "4c8e004b3279825250ce81de903d92ee4be09634def8030a5d037b1cc504905e"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.7.0/unicorn-linux-arm64.tar.gz"
      sha256 "9a745fc4139de62f23f7dfc5dbe4940beb2404f9579f364ac8208b4496310d7d"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
