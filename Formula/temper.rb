# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.11/temper_0.1.11_darwin_amd64.tar.gz"
      sha256 "d090a23d91c9af90e7a7bdd3e569f188e114d9a08dcf001137bf5bbbd720ec0b"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.11/temper_0.1.11_darwin_arm64.tar.gz"
      sha256 "b7b7719dc06665fe2ae603a3c22e9e4647df608b70bf5d38f1d64f87cdff1cb3"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.11/temper_0.1.11_linux_amd64.tar.gz"
      sha256 "ec1fac99c6695594171d26c7d20d395094ed1edae0a2d69dac524b9df7387c0c"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.11/temper_0.1.11_linux_arm64.tar.gz"
      sha256 "71c95457bb08e453804001f1bf6ba03f6a581172776aff08d887fc3080938c30"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.11", shell_output("#{bin}/temper version")
  end
end
