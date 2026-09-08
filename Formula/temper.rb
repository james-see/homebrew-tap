# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.7/temper_0.1.7_darwin_amd64.tar.gz"
      sha256 "7ef807e0cf8a88c5df9f79d8dab3b8e576e9f9bab37c13130352aa91136a84ea"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.7/temper_0.1.7_darwin_arm64.tar.gz"
      sha256 "407dafac9de6755db2868ed6159c91cd062c5d2bfba4b08d6cf6da4de56e7abe"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.7/temper_0.1.7_linux_amd64.tar.gz"
      sha256 "9cf67bf6ac20b770d5bfb3d3b8fa887e0d97c339072ee43a26e4e51cc0bd6908"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.7/temper_0.1.7_linux_arm64.tar.gz"
      sha256 "585ea36710d34e191c2d8d1df551ea9cc327ead9042f435f600ae5667035eb48"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.7", shell_output("#{bin}/temper version")
  end
end
