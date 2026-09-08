# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.8/temper_0.1.8_darwin_amd64.tar.gz"
      sha256 "5e4e2cf2b044deff54b232402b864f76fe2addcfb8877840c9c097008aa98aca"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.8/temper_0.1.8_darwin_arm64.tar.gz"
      sha256 "b30b00a5fb3ef6fc0fc64827426ac8464a9ac12e0555da23f92561dafd7760dc"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.8/temper_0.1.8_linux_amd64.tar.gz"
      sha256 "476e2b09d1eb2c4d2c624851bc775153ae86c95ea6870899be50d19d409e1889"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.8/temper_0.1.8_linux_arm64.tar.gz"
      sha256 "cd02cad5f3f945d9279d9efc17a9fbe4806fe6e810783a48ed2f00758d912816"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.8", shell_output("#{bin}/temper version")
  end
end
