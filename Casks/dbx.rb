cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.56"
  sha256 arm:   "013a5115a4f4eea43306f8f32fd711bef428074e9a9895833e32cf4dea6ba1ea",
         intel: "8d39339beb3060f7dbcbfbd68ba8d08191967bb0c7f05e443a650958fb3e055c"

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
