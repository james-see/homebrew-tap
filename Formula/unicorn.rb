# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.33.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.0/unicorn-darwin-amd64.tar.gz"
      sha256 "ea809efd903be76558965aecd18b8801d20e064c0d69ba49c9ad2f99f255e0b1"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.0/unicorn-darwin-arm64.tar.gz"
      sha256 "693e75157cbab407705a37cc0cc629086b910f3352933bf83b1a34891d2addc4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.0/unicorn-linux-amd64.tar.gz"
      sha256 "dd330558bada02426b51c76a8df10c41c4565c98bff7f83f722c19a01b05d161"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.0/unicorn-linux-arm64.tar.gz"
      sha256 "c4a8d450c79f47073fc4b1e65203815791eb70c7afb452c3bc9daf575495a729"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
