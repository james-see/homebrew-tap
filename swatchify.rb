class Swatchify < Formula
  desc "Extract dominant colors from images"
  homepage "https://github.com/james-see/swatchify"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/james-see/swatchify/releases/download/v0.1.0/swatchify_0.1.0_darwin_amd64.tar.gz"
      sha256 "4a99f5340aa0be4fc557a67919d316eadfc98c08ae837e4b5a34a5734be1c2e1"
    end
    on_arm do
      url "https://github.com/james-see/swatchify/releases/download/v0.1.0/swatchify_0.1.0_darwin_arm64.tar.gz"
      sha256 "57ccd4e9470defb1ea15683a2d3c9df4eda948a5758f99cb48ef705f4bc4a198"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/james-see/swatchify/releases/download/v0.1.0/swatchify_0.1.0_linux_amd64.tar.gz"
      sha256 "03af22c929632bfd43a67bc45c209df605539df26bb6602420fcdd3e42d5fd36"
    end
    on_arm do
      url "https://github.com/james-see/swatchify/releases/download/v0.1.0/swatchify_0.1.0_linux_arm64.tar.gz"
      sha256 "bb4c2bacc5eb3355236ff13f36a211ccd699cffcd6585e98140d9baa0004f708"
    end
  end

  def install
    bin.install "swatchify"
  end

  test do
    system "#{bin}/swatchify", "--help"
  end
end
