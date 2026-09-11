# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.14/temper_0.1.14_darwin_amd64.tar.gz"
      sha256 "dc5b657d57ec2eca1e6eb7310900a48dde37bbdd03875c5a89fc82909aa7a9d0"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.14/temper_0.1.14_darwin_arm64.tar.gz"
      sha256 "9b4c53085e7d27418ace3324925d0bec912b03acddaf5794ea548fb3a966bb0f"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.14/temper_0.1.14_linux_amd64.tar.gz"
      sha256 "a39eb6bd2b8c3dc6416b960d824c9bbdb576479dc495e7e11619437d6d1d3151"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.14/temper_0.1.14_linux_arm64.tar.gz"
      sha256 "3e13867c1b6da7be56c02d9d56018658f03ae86133ad602bba600119648a811c"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.14", shell_output("#{bin}/temper version")
  end
end
