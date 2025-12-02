# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.0/unicorn-darwin-amd64.tar.gz"
      sha256 "79f1d02834fafb127a5b7b6ea6cb1e376a3f0b108dabfb4fedae7190f0d487e7"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.0/unicorn-darwin-arm64.tar.gz"
      sha256 "f42ad6015116d1cfee42c2045435d413c4a19ec914a0ce243c156836feb5861f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.0/unicorn-linux-amd64.tar.gz"
      sha256 "b76ccff2167f37bc6fa628f8c22b022c235a026c186b09f520c25b823372e3a6"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.0/unicorn-linux-arm64.tar.gz"
      sha256 "69171000ce7a15104c1e911ce9e323640c452659c5e73f4f30c73fc8ec4f38a1"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
