# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.32.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.3/unicorn-darwin-amd64.tar.gz"
      sha256 "438bc9d1f480911aefa1b78048f714103f10cedc96a8e2971d58886a32173ebb"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.3/unicorn-darwin-arm64.tar.gz"
      sha256 "e8bdd84ecf3745554aa598922b7c3044e7cd74a96d57d844d4871078f9178716"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.3/unicorn-linux-amd64.tar.gz"
      sha256 "1694d8863e72cddfa355e0b37b1d1370b05104237176165e1f4d888be21fd198"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.32.3/unicorn-linux-arm64.tar.gz"
      sha256 "c8b69115d0ddc4ff7840799f2c68570dd24f36e47d672881fb824bfafb4a8283"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
