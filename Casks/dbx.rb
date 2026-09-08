cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.8"
  sha256 arm:   "a9fe566db532d71a4197e00df8352f2b2e909d317f9d6da319096163c5790c2f",
         intel: "682bd5e07eef0952db6b0d9895cc8dbaef252cf0df25d857ad5a830e542da2b8"

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
