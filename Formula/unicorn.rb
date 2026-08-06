# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.35.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.35.1/unicorn-darwin-amd64.tar.gz"
      sha256 "5471defc82528656efab980826ceb3984029cabcca599cce07d4c1699c80f32c"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.35.1/unicorn-darwin-arm64.tar.gz"
      sha256 "d9fef8cdb4f3ac9ddf4c6d1103a8279678b29cf3e949dcbd105f92577bc23732"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.35.1/unicorn-linux-amd64.tar.gz"
      sha256 "609d55b3cd0018190aa171546d589bac4f73d4243536466833f5e0a0a2f81d17"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.35.1/unicorn-linux-arm64.tar.gz"
      sha256 "01fc49a63dcf99634d44e59deb4d1e27df6a04f9c7978506b1bd4760b1e91cec"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
