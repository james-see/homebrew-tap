cask "ynot" do
  version "0.5.1"
  sha256 "f42b231ff350e9de180f1c277206076210d7da2133e690701fe4dbd424196389"

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
