# typed: false
# frozen_string_literal: true

class Temper < Formula
  desc "Adaptive control plane for coding agents"
  homepage "https://temper.baby"
  version "0.1.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/temper/releases/download/v0.1.10/temper_0.1.10_darwin_amd64.tar.gz"
      sha256 "91ad67db5ab41839b798c0c90259e57be0cd647608744c4a87f26cb10d3a58f2"

      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/temper/releases/download/v0.1.10/temper_0.1.10_darwin_arm64.tar.gz"
      sha256 "035d7ed52ddc3b14cd0e71017794daf92ab323f2d13bb3994c9e59895cf390de"

      def install
        bin.install "temper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.10/temper_0.1.10_linux_amd64.tar.gz"
      sha256 "ca1e4ea7184abc97e0cae487221f5bd1d093661018cf5fdf95dd847fdffb2874"
      def install
        bin.install "temper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/temper/releases/download/v0.1.10/temper_0.1.10_linux_arm64.tar.gz"
      sha256 "a17189f203cabcfd2544700eaf1653c41b207f629d0384589f1171159c059417"
      def install
        bin.install "temper"
      end
    end
  end

  test do
    assert_match "temper 0.1.10", shell_output("#{bin}/temper version")
  end
end
