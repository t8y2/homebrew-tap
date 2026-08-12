cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.82"
  sha256 arm:   "197a0df14c5f34422406c480f4390aea322eaeab3a8f7b503c3e3dd86cc6b6aa",
         intel: "7c0f6abfcbc325202cec1db95be58a2d03a5b9cfcc9854c107278f2e49172ad7"

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
