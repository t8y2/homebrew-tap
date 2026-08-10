cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.80"
  sha256 arm:   "979bd5283c2f40ddb384be3c56f4b64be7bb4ce03951346cd5fe8987905ab428",
         intel: "684c1573f14d16b8d5855bfae33572663840afbce94e03ad35bef0dd0a8c69f6"

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
