# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.9/temper_0.1.9_darwin_amd64.tar.gz"
      sha256 "7719d68ff0cb43b2e9c85bed9c14e67217a146938b8c5e328cb3bb51cc649eaf"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.9/temper_0.1.9_darwin_arm64.tar.gz"
      sha256 "49d4f3f3e648eb33d2f4249084db2638e09a6d998a038abcc4f82a75ad2ae32a"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.9/temper_0.1.9_linux_amd64.tar.gz"
      sha256 "c9f23b72c2bc48de34a6f1e1e10c5c1da06e5b3cbebc57420ee0f90b432c4f34"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.9/temper_0.1.9_linux_arm64.tar.gz"
      sha256 "8816e02d40cd4f6e1c753a3a38585e01725dd02dbec630f7bd1926d584bf2e9b"

      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.9", shell_output("#{bin}/temper version")
  end
end