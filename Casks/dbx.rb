cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.70"
  sha256 arm:   "ad95660ad798fc479b9a8946efb1351b856f0826aa75224abb9746f5de324662",
         intel: "a89265dc74c654133a8624839a552b059eedfb377ffcb492e4be173420d93db6"

  url "https://github.com/t8y2/dbx/releases/download/v0.6.70/DBX_#{version}_#{arch}.dmg"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

  depends_on macos: :big_sur

  app "DBX.app"

  zap trash: [
    "~/Library/Application Support/com.dbx.app",
    "~/Library/Caches/com.dbx.app",
    "~/Library/Logs/com.dbx.app",
    "~/Library/Preferences/com.dbx.app.plist",
  ]
end
