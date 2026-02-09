# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.9.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.6/unicorn-darwin-amd64.tar.gz"
      sha256 "334e6e9577fc7b91f331ea2c507a0384ac243a72c9889db3b4e4d8e76fdf34a3"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.6/unicorn-darwin-arm64.tar.gz"
      sha256 "7808c87633bdb347ff9124746f8dbb548512bd2ec58f8d39226dd4a66076ef54"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.6/unicorn-linux-amd64.tar.gz"
      sha256 "7fa01472bf4963939f0e06b4c4a6ccd844d363b0c45bd4af6d2c83d7f785a1ae"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.6/unicorn-linux-arm64.tar.gz"
      sha256 "8a0932f8369066340b02ac586f0caff33cc31998f4686479d7a9df90261cbca7"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
