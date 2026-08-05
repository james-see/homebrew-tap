# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.33.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.2/unicorn-darwin-amd64.tar.gz"
      sha256 "3b53997dc628e10319eb9e015cec631122ec0c805d85e832c61ebfca1df5d12e"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.2/unicorn-darwin-arm64.tar.gz"
      sha256 "f7a773f26654e867596a024e9ae7c610c365c18bb77a89d6ba9971db71a84962"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.2/unicorn-linux-amd64.tar.gz"
      sha256 "8dcfa24a47eebe791519e824fd22e2f606febd163dde7600db31cd7960150345"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.33.2/unicorn-linux-arm64.tar.gz"
      sha256 "8002d3ff00b37c63422ec1a5ca4fa10df75cab5e2b763a39679627fc07f794db"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
