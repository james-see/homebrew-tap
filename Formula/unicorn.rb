# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.6.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.6.1/unicorn-darwin-amd64.tar.gz"
      sha256 "895d5521fe7c794a6bf9ef30f3c8d56dfac992fb50ecae239bb68bf224e6ad90"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.6.1/unicorn-darwin-arm64.tar.gz"
      sha256 "42444ac58ebf075e0c8a9006a11b947a664c5a7e244f8064cc39fbd8ae3c23b8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.6.1/unicorn-linux-amd64.tar.gz"
      sha256 "2179927498395e38c2fca04a823238358352b16dc427cc875a81c83aa7348f02"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.6.1/unicorn-linux-arm64.tar.gz"
      sha256 "f690dad1c57ffdf0ee99ec07e6e539a75248386ec58e542325546251adb381cd"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
