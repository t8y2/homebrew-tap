cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.12"
  sha256 arm:   "1facf816ff3556dd4032999b7cf63477b1f16ef689f00be3135d149366bbd533",
         intel: "b3430098c712198df04ea79dba4e07157478db85f9761be8d76bac1d48f46e3e"

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
