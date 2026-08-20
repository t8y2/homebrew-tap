cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.90"
  sha256 arm:   "9b8d6182e98d67f30e85b70c1c52c6a4e67e3434cc64b9edf6da64848fe9dd65",
         intel: "7b038db575760e874bfab300a1b93275ce166326712b86c37741941bb6d18626"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}.dmg",
      verified: "github.com/t8y2/dbx/"
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
