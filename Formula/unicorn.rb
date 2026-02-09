# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.9.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.7/unicorn-darwin-amd64.tar.gz"
      sha256 "4bc107b2e34f1f776d166bb6cc8059dec2a37e57697f919cc621bafd16b15b49"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.7/unicorn-darwin-arm64.tar.gz"
      sha256 "1b62490d1da81371085dad8fddc0ed070831d965173d2bd082e99e1e120afeb8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.7/unicorn-linux-amd64.tar.gz"
      sha256 "a2fbdb8326175f8e1e2997fe069ddacf4422240ee6650d381c22f0599a6ed21d"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.9.7/unicorn-linux-arm64.tar.gz"
      sha256 "59d41374b12818c1fdf4cbf6400e254148cdd18e1d4a0d2e070269f7013df441"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
