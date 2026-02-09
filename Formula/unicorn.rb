# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.9.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.5/unicorn-darwin-amd64.tar.gz"
      sha256 "2e847ac1d23c8f0a3c827c9dc79056c6c78ade9ca5134c4f1ec95a510c404cd5"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.5/unicorn-darwin-arm64.tar.gz"
      sha256 "96808d67338d60cd8c4a667b074219e764a7d438887f8c406792cb607291d5f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.5/unicorn-linux-amd64.tar.gz"
      sha256 "7539011dd1afb945b4783bc6c5dd6218bfa280b6fde0364b64e0996aea276ea4"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.5/unicorn-linux-arm64.tar.gz"
      sha256 "d8e1148a88cba5997d683fe0c7bfb6a68d0160de3840cecbf7458135678c6990"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
