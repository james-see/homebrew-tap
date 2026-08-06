# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.36.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.36.1/unicorn-darwin-amd64.tar.gz"
      sha256 "78d385c75ac822cc4a174c6ea81aff2dbc19b709b52ee3abd0cbd72257ef9ab9"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.36.1/unicorn-darwin-arm64.tar.gz"
      sha256 "70e428ea922c11dccc3f85f31b954e10ec8103c620e759b5e49e3e0859138a2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.36.1/unicorn-linux-amd64.tar.gz"
      sha256 "1b0c6d4413a481b75c93da1a5c03870cdb7136ba511f8f009fe395142695727c"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.36.1/unicorn-linux-arm64.tar.gz"
      sha256 "dea7a7cf708666ae56ac49cb5e109425d491dedc4876574834c1088c556ef723"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
