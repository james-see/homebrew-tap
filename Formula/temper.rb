# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.1/temper_0.1.1_darwin_amd64.tar.gz"
      sha256 "2f804494987a5b45dca44f49444ddc931948f04bec4e384825fbd2050c986d6b"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.1/temper_0.1.1_darwin_arm64.tar.gz"
      sha256 "1d903137d290bb0a7bfe15a036cbeeeb0269d4fd5d757a277becef34f291ba9c"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.1/temper_0.1.1_linux_amd64.tar.gz"
      sha256 "162fec11cc701d70148936efb9a9692db0ba100e7e3251100201f81af1753d68"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.1/temper_0.1.1_linux_arm64.tar.gz"
      sha256 "c2346de1a1fbead9c5528ccfaa010d8a52fd31a7f2f5b772ed385d2254113989"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.1", shell_output("#{bin}/temper version")
  end
end
