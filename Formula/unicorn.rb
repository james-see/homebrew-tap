# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.5.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.5.1/unicorn-darwin-amd64.tar.gz"
      sha256 "d4c3181924928a5760f701a1ad74191d5cd499826f0960b7a069f19738b91ab0"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.5.1/unicorn-darwin-arm64.tar.gz"
      sha256 "ce18ca92248a81f9fcd4977ae0f1d17f493af519ef6f5e7d816fcee1c8f49242"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.5.1/unicorn-linux-amd64.tar.gz"
      sha256 "5a76ab26774551bf18934ba3aeb7a075b0dbc5aeeb7a15c65794a4a8cd40898f"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.5.1/unicorn-linux-arm64.tar.gz"
      sha256 "ebbc96c49d348700c8ff8710f94dcb47c90f5311133e2b92ab40b1cb390725e0"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
