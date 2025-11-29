cask "ynot" do
  version "0.5.0"
  sha256 "7891b1242836763a424dd781ee931b6ba242366543a1f6649ebf527ff8da008c"

  url "https://github.com/james-see/ynot/releases/download/v#{version}/ynot-macos.dmg"
  name "YNOT"
  desc "Simple YouTube video and transcript downloader"
  homepage "https://james-see.github.io/ynot/"

  app "YNOT.app"

  zap trash: [
    "~/Library/Preferences/com.ynot.plist",
    "~/Library/Saved Application State/com.ynot.savedState",
  ]
end
