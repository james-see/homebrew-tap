# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.3/temper_0.1.3_darwin_amd64.tar.gz"
      sha256 "a4886e7e57c283c49f7aff77e697e530e6cf875b432813f8c168b65e824eef3e"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.3/temper_0.1.3_darwin_arm64.tar.gz"
      sha256 "8e0aae93fbbc06fc3a75875d21609afb3316fb219566a827398387e922a853eb"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.3/temper_0.1.3_linux_amd64.tar.gz"
      sha256 "29c9fe5a2cad6cf22a6444be0116cb415c0e9aa5108452d996179c7f4b1ba750"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.3/temper_0.1.3_linux_arm64.tar.gz"
      sha256 "05aab534c1c5a31ca9323f1e5287fc8f3c06a68f1155950c1fd0270767b2589f"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.3", shell_output("#{bin}/temper version")
  end
end
