# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "4.3.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.2/unicorn-darwin-amd64.tar.gz"
      sha256 "f3d900260384f79435971567377de210052cb3e1093d230f6ef86e1ad789760c"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.2/unicorn-darwin-arm64.tar.gz"
      sha256 "382bb064e3a45543eb83be4595448cce79d8c0de739138248ef990ef3f9505d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.2/unicorn-linux-amd64.tar.gz"
      sha256 "b425c6c6457634cbd89deb8930f449f8a19df09ddcb55379e90d038d404d9410"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v4.3.2/unicorn-linux-arm64.tar.gz"
      sha256 "60455aad9833f55858f5abbbdbb3de77b5b6ecbb84dc2b8dd18126827b6647a6"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
