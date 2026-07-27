# typed: false
# frozen_string_literal: true

class Songid < Formula
  desc "Identify songs from audio files or microphone input using Chromaprint + AcoustID"
  homepage "https://github.com/james-see/songid"
  version "0.1.0"
  license "MIT"

  depends_on "chromaprint"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/james-see/songid/releases/download/v0.1.0/songid_0.1.0_darwin_amd64.tar.gz"
      sha256 "1dde6a0f88a9c93cb2cc51af75d8f2cd5aa8f71625665c20dc7af25068d0cdac"

      def install
        bin.install "songid_darwin_amd64" => "songid"
        bin.install "songid-mcp_darwin_amd64" => "songid-mcp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/james-see/songid/releases/download/v0.1.0/songid_0.1.0_darwin_arm64.tar.gz"
      sha256 "353b7ba66a00ae14d7f2cc87e361ca1cb6ec070880eab5fd75ab96855b6806ba"

      def install
        bin.install "songid_darwin_arm64" => "songid"
        bin.install "songid-mcp_darwin_arm64" => "songid-mcp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/songid/releases/download/v0.1.0/songid_0.1.0_linux_amd64.tar.gz"
      sha256 "196791c731cd89bf185930c21a6de5e5b179defbfe5bf83a7345ac3e08ba624f"

      def install
        bin.install "songid_linux_amd64" => "songid"
        bin.install "songid-mcp_linux_amd64" => "songid-mcp"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/james-see/songid/releases/download/v0.1.0/songid_0.1.0_linux_arm64.tar.gz"
      sha256 "e3817e0b74176db64261efc115b23657dd3fa633b500903c356ce47bb55d1afe"

      def install
        bin.install "songid_linux_arm64" => "songid"
        bin.install "songid-mcp_linux_arm64" => "songid-mcp"
      end
    end
  end

  def caveats
    <<~EOS
      songid requires fpcalc (chromaprint) for fingerprinting and ffmpeg for microphone capture.
      Both are installed as dependencies. To identify a song:

        songid listen          # record from microphone
        songid file song.mp3   # identify from file
        songid doctor          # check dependencies
    EOS
  end

  test do
    assert_match "songid v0.1.0", shell_output("#{bin}/songid version")
  end
end