# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.36.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.36.0/unicorn-darwin-amd64.tar.gz"
      sha256 "5b49c701b886d49a3f69b3f0f2b6445f8c8a7cbca84588802ce62bdb734164bb"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.36.0/unicorn-darwin-arm64.tar.gz"
      sha256 "154aa5e31e3fbfda297b5951c43deda7990bc59c8b41ac86ea6f1020e42ecc93"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.36.0/unicorn-linux-amd64.tar.gz"
      sha256 "044edecb844d87728507ae36892c855835cc8febf1761b7bf38cbf7c32bbb12d"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.36.0/unicorn-linux-arm64.tar.gz"
      sha256 "fcf107d8db42f3d388f4a4888341385500d995739c74b88deaeccf178426ba3c"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
