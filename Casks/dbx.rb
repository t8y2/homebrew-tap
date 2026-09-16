cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.15"
  sha256 arm:   "3f23231d105fb9c0eb52d946923ca1dc63ee02bdd2bc53462b5290b49b113363",
         intel: "7ba8a3745b6bbba53683a9a2ee2b9818376a359839e71711af0be24206841855"

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
