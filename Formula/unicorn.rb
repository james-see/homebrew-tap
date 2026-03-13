# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.32.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.4/unicorn-darwin-amd64.tar.gz"
      sha256 "7b805bada74878633af8dc70c5e8294a6ca79ae793ae8c844d714920a49c1f34"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.4/unicorn-darwin-arm64.tar.gz"
      sha256 "216bc643ee2ec1c8927cc8475ff0c94e5993eae3a87c19d2ef255dbbc078ad87"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.4/unicorn-linux-amd64.tar.gz"
      sha256 "62c0786c9d8f3ad4a98045fab52758b239f307f0a8a62da65cc528fec6cde1fe"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.4/unicorn-linux-arm64.tar.gz"
      sha256 "58396fc5a06962f3818b542bb693c2b2d5dec35ab820fd1398bc0846d7b3722c"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
