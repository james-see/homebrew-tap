# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.6/temper_0.1.6_darwin_amd64.tar.gz"
      sha256 "503358ea6803494900f415b02df048f4a7d57bd6cb4e34ffc6a25a14bcb2f815"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.6/temper_0.1.6_darwin_arm64.tar.gz"
      sha256 "01ea3432e6cf08d47a00fc660f2d57e0affbdb370d1aae401287a5f14c932dad"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.6/temper_0.1.6_linux_amd64.tar.gz"
      sha256 "40364b11e9c57862cc829cf4da2eca47567e37251585f8d4073300c422065f04"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.6/temper_0.1.6_linux_arm64.tar.gz"
      sha256 "fe30912053d2dc597806a02b3170961221d8d213b7e2ec4706f0f73366b99e68"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.6", shell_output("#{bin}/temper version")
  end
end
