# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.13/temper_0.1.13_darwin_amd64.tar.gz"
      sha256 "4c145730da445c4d631915cac2bae6d89ea1278cade79c80e4860645ce638b20"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.13/temper_0.1.13_darwin_arm64.tar.gz"
      sha256 "205a330329681b746fbbe9a20d30a6a5d7f7e36708fee138b0eaafb97d6ad398"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.13/temper_0.1.13_linux_amd64.tar.gz"
      sha256 "c74eee7f66e25f9ea3d28b8acdfcd9f2a985752b234e4a308d22b98cde2708cc"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.13/temper_0.1.13_linux_arm64.tar.gz"
      sha256 "9fc2fe4372bafc480bd8bd3d95415e4dacc7300a2ca0f0d60322248b4dac2f13"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.13", shell_output("#{bin}/temper version")
  end
end
