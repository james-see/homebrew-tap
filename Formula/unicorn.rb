# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.5.0/unicorn-darwin-amd64.tar.gz"
      sha256 "8e3dffb9133b64dcd44567ebf88c8b17cfbdd7007057e88aca76f003dfe380f0"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.5.0/unicorn-darwin-arm64.tar.gz"
      sha256 "97a2463fb58ea88943489b809230ebae02b28200b72aecf336eccb357c5fcff5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.5.0/unicorn-linux-amd64.tar.gz"
      sha256 "ec6631dde1963f3b61f1990d3e4fbaf780d2684aa4a53cf78e04608ad8b539d3"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.5.0/unicorn-linux-arm64.tar.gz"
      sha256 "4570e21538e54ceb5ba2bb9c4e8f4d4347f4612c01e120fc15eaab5c1d8a2195"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
