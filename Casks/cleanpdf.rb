cask "cleanpdf" do
  version "2.0.1"
  sha256 "0cf857bf3a9c455d6c68d133f86496994ce0c0994b7595af60ab5d445fffe2a7"

  url "https://github.com/james-see/cleanpdfapp/releases/download/v#{version}/CleanPDF-macos-v#{version}.zip"
  name "Clean PDF"
  desc "View and wipe metadata from PDF files"
  homepage "https://james-see.github.io/cleanpdfapp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CleanPDF.app"

  zap trash: [
    "~/Library/Application Support/us.jamescampbell.cleanpdf",
    "~/Library/Caches/us.jamescampbell.cleanpdf",
    "~/Library/Preferences/us.jamescampbell.cleanpdf.plist",
  ]
end
