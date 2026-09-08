# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.5/temper_0.1.5_darwin_amd64.tar.gz"
      sha256 "73664fa0e867d27843b04d03cd6c9abba376bc156505ab515e05de7a4e0a44b1"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.5/temper_0.1.5_darwin_arm64.tar.gz"
      sha256 "9fe4d531bfffc94f7a38e7e1751dd0e9e1e4faf72feaf1dd6f920503ed70dfaf"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.5/temper_0.1.5_linux_amd64.tar.gz"
      sha256 "bb7d6686970f63f8ac49a8b41483aa1b14cef8660961fb36ad4a3d6a41e6b425"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.5/temper_0.1.5_linux_arm64.tar.gz"
      sha256 "c1017784241b73f91da466a2957d4a00e223ece962cd8bbc61a3bb61b5730664"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.5", shell_output("#{bin}/temper version")
  end
end
