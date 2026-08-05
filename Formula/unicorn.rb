# typed: false
# frozen_string_literal: true

class Unicorn < Formula
  desc "Terminal-based venture capital simulation game"
  homepage "https://github.com/james-see/unicorn"
  version "3.34.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.34.0/unicorn-darwin-amd64.tar.gz"
      sha256 "19fe6865089b94908741ccfd86f9edfadf26ad34451981154ca0c081331a8b4b"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.34.0/unicorn-darwin-arm64.tar.gz"
      sha256 "2b4eb472b68f4157f56492a98a5779eb1a5febd18a8713f00633872b3001ea6b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/unicorn/releases/download/v3.34.0/unicorn-linux-amd64.tar.gz"
      sha256 "e5605b8c45021292a29926511aafacccb937d68fa6ca7538137431d84210d6cf"
    end
    on_arm do
      url "https://github.com/james-see/unicorn/releases/download/v3.34.0/unicorn-linux-arm64.tar.gz"
      sha256 "a8a5bf9bb0bea51c3291cd1e480af56c9a0a5d503d16797a97bb143e4947b236"
    end
  end

  def install
    bin.install "unicorn"
  end

  test do
    system "\#{bin}/unicorn", "--help"
  end
end
