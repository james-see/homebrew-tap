# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.8.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.8.1/unicorn-darwin-amd64.tar.gz"
      sha256 "5249626c7a5b2cf02d7ef3fcb1dcf2fde09a327fb871cb38f692afcf045c13ea"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.8.1/unicorn-darwin-arm64.tar.gz"
      sha256 "6af40286b991b62fa65de3cd027862ec151778a828a9a5dc0c58ad99c7ebf990"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.8.1/unicorn-linux-amd64.tar.gz"
      sha256 "ef9413b69952696a442f25ac073b02d29a2b4aea52963bba9c72007873c140e3"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.8.1/unicorn-linux-arm64.tar.gz"
      sha256 "7a4131d94e10f3fb2994bf423dbc3a7968eac2503e1c646332cee8352405e880"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
