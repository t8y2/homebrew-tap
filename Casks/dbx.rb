cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.14"
  sha256 arm:   "962ae72589b1be0433a8d47e06c0e50c4ae6dbc195440b0454b8c5ddbb734b9f",
         intel: "5522cb2e70d4fdba1bd7211608d50b3d5bfbbc28be99b68a9b29c8628b96cc8b"

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
