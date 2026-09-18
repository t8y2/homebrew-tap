cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.16"
  sha256 arm:   "599dcd8287fe02e363ddf8daaa35d7a6a204fdbbff98b7963d51cc1ba288823b",
         intel: "e4dca6ccb21e9d3ab3a6448673a3616304a370c1597685d5fb585207f9a9f9de"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}.dmg"
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
