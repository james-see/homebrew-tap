cask "ynot" do
  version "0.7.0"
  sha256 "2b7d5756c0ea182b534f0ec954ff2251787d13584be9a67f1aecd5c38e420ea2"

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
