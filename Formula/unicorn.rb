# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.6.0/unicorn-darwin-amd64.tar.gz"
      sha256 "27014212711b8493ece82fe29ac10511147c4f626711508f9e30c01f95d01a4b"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.6.0/unicorn-darwin-arm64.tar.gz"
      sha256 "002bec53f5280c8e87163dfe04b9848b3ee1779edf10b79bfcc11f1363fcec12"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.6.0/unicorn-linux-amd64.tar.gz"
      sha256 "663f021481441bcdea6fca1b33de497de1ed0c897fecad6f1af9732d8742038a"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.6.0/unicorn-linux-arm64.tar.gz"
      sha256 "8a11141b590d812ef3add99953b306d7c4f641fdb74a0fae2912985d50df501b"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
