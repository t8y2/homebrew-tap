cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.18"
  sha256 arm:   "96154aeb21dbc3a4db539ddea9ea456683c19c0b211e3b06b51adf6fd53c441e",
         intel: "20df5ab0f7e2a6710bb96f82801d0947d6a606c86e1aec2e975d02c9a0435fc7"

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
