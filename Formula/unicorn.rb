# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.8.0/unicorn-darwin-amd64.tar.gz"
      sha256 "fd9c911066fa8bf3ac9ebc08ee7b311fd0fc37190ea26a9f6d7c1a7493a89db4"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.8.0/unicorn-darwin-arm64.tar.gz"
      sha256 "e89b693bb52d5d7d7162fbac8c06a8e325b2559ab03dd969a2af5baaba520c08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.8.0/unicorn-linux-amd64.tar.gz"
      sha256 "1b968816ea764e0f958c5f85783e58d52c23a7d8df0a89ae5c8f999bddb9dd39"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.8.0/unicorn-linux-arm64.tar.gz"
      sha256 "3742f53ff492d75f22f6fa8073f776a11bda423b2125032f678e6dc4c4826ac8"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
