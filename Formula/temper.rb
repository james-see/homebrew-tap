# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.4/temper_0.1.4_darwin_amd64.tar.gz"
      sha256 "65847b44f3d65b4fc3522ce1266cd25c2a6ddd76012c7c7345b7c644f62299fa"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.4/temper_0.1.4_darwin_arm64.tar.gz"
      sha256 "92f2f1ac2622fe2021385fe7ac9c23777beb24df1965d5ccfb301ab7ebb0f7a5"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.4/temper_0.1.4_linux_amd64.tar.gz"
      sha256 "0d6e0fcc7f010d1b38dffb51887fd7564eb26ee87da2480d813de06e91b6fe12"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.4/temper_0.1.4_linux_arm64.tar.gz"
      sha256 "1f137c947d5d82876b1cb87cb0c1d161509f4f06f0da3d829cbcf1864a8dcc56"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.4", shell_output("#{bin}/temper version")
  end
end
