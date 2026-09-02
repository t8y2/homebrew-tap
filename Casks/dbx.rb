cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "e519d69596b4b863a746ea814e6e619f5c8a48fda71961bace1364c9efb0293b",
         intel: "19c106895fa7128cd5ae06bebf1e315daf29c4d5eea4119a863c4c3b2044ffb7"

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
