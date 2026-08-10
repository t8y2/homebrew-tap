cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.78"
  sha256 arm:   "9efabe14a99ec8deeb972898630df77bbebb721dfab5ba7ecec20d915ba68c19",
         intel: "120fb922fe51272ce4bccfa39c183fc308ff516a989a9a4bea556d45ae9cc507"

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
