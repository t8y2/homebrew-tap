cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.70"
  sha256 arm:   "4b3f76601add139dbf7020e5c68922b6de5ed62b14680ee889a211fcb313fd5a",
         intel: "5e37be68d2703156e3c2bc83bd54233a1bca8da6b9164c5cdc6c6acc7208370b"

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
