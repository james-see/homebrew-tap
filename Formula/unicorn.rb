# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.35.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.35.0/unicorn-darwin-amd64.tar.gz"
      sha256 "9a2afdd0ab141b868973224912437e16514ac53deb4a179a40661658e4e8e207"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.35.0/unicorn-darwin-arm64.tar.gz"
      sha256 "190afb02ca82917f5c1d87475aea699fbbe25f0f40a0fea5a1770eca95b065cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.35.0/unicorn-linux-amd64.tar.gz"
      sha256 "579ed3c496f2bb4bc5bccc6ac4ab13f1a0e90493e5cc06233cf037eed5f07e6c"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.35.0/unicorn-linux-arm64.tar.gz"
      sha256 "4349958ae4e05ae8a2031df276442fa59f203febb997c61b2f3f8a1c46b5206f"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
