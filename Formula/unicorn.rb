# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.7.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.7.1/unicorn-darwin-amd64.tar.gz"
      sha256 "cb193f4e109284d6836c311d6ec3160d58e17d9abbbf9e224dc67c8d73e888c7"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.7.1/unicorn-darwin-arm64.tar.gz"
      sha256 "33ac16dc11d5831d661e15badcf9b7bdbc899515d669ba067f50087a6a31f7b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.7.1/unicorn-linux-amd64.tar.gz"
      sha256 "c05d18f21643e12979245b9263f301ecb7f3fe1c961ba301bc19cfe9bd6af9fc"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.7.1/unicorn-linux-arm64.tar.gz"
      sha256 "45adc31744a97b10395da36d26c26512d459fbeeae045f368e40496b8859bee5"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
