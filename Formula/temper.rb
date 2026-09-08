# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.0/temper_0.1.0_darwin_amd64.tar.gz"
      sha256 "e05c3aea2e3855346c57ae9d5267601ff629215306dce14243d0985ed3efd34c"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.0/temper_0.1.0_darwin_arm64.tar.gz"
      sha256 "b6eaca37f7530a0ba010d44dd5c40ce6269e83d87724639d26e89f845dc5dfc9"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.0/temper_0.1.0_linux_amd64.tar.gz"
      sha256 "959e90ee5b61bdcec2ea71416a39e83c6d3801dca66aff045e96745b5eff4340"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.0/temper_0.1.0_linux_arm64.tar.gz"
      sha256 "f9332ea8a7c5111c194bf2da00ce62be3c74ec05cf439e6f1a3fb05dcf99dca3"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.0", shell_output("#{bin}/temper version")
  end
end
