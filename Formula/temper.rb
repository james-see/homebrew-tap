# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.2/temper_0.1.2_darwin_amd64.tar.gz"
      sha256 "37eb791c46d872bcb5595c6f94baa9a4a829259fdbc13e7ffdcda2de55fd0c70"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.2/temper_0.1.2_darwin_arm64.tar.gz"
      sha256 "93c62eb36e9daaca5b02dfa06a0e71b769c09d861a4ffc8948d691a1e6c80320"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.2/temper_0.1.2_linux_amd64.tar.gz"
      sha256 "7e410a2049d882298cc2fe4f6ca275a3c5a5cdd6106f6bbd9f4940da90b733c1"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.2/temper_0.1.2_linux_arm64.tar.gz"
      sha256 "bb549efa3a8eec54a398d441aeaf94841599796965a78d30ebcf81bbea07e579"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.2", shell_output("#{bin}/temper version")
  end
end
