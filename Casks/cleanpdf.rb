cask "cleanpdf" do
  version "2.0.0"
  sha256 "7a1a05f47671de85d3b7f3ae54a20ccc177a81c7bcab346279ff0404d0dc4b39"

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
