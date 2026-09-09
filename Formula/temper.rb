# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.12/temper_0.1.12_darwin_amd64.tar.gz"
      sha256 "be83f15851f81a60d59182a62ceeaa6aba6d5709dd601b89a42c36f49ba69722"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.12/temper_0.1.12_darwin_arm64.tar.gz"
      sha256 "1a96235de271bb200a94606b6997002e0e827d8ed85faef454aea80d6d817057"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.12/temper_0.1.12_linux_amd64.tar.gz"
      sha256 "801026ac406eaea637816a7b652f1f91483128f597c0ed6370fa7ead580d9e21"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.12/temper_0.1.12_linux_arm64.tar.gz"
      sha256 "8602cb5285291c42c1ae10cc7a848ba2c024bde11336cb8b03e21db6c73c0ccb"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.12", shell_output("#{bin}/temper version")
  end
end
