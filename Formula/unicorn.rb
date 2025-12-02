# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.1/unicorn-darwin-amd64.tar.gz"
      sha256 "886fb95237d76f245d2d3dffe169870d4e12e71d49410f6995ac398741f16bac"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.1/unicorn-darwin-arm64.tar.gz"
      sha256 "822ea4ac0ce51da7dd094f26567382a865d24150539c9705c0f5b3af085d815c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.1/unicorn-linux-amd64.tar.gz"
      sha256 "2c430a6d7c724dbaa69f75463aa291f8bcde49afd4d68591d6142a2116586547"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.1/unicorn-linux-arm64.tar.gz"
      sha256 "b2b965c182cda58ed7ff5a7b70aaec7f51a1dc1f456b5fd4833ddcd9d168e1fb"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
