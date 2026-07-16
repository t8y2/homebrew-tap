cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.58"
  sha256 arm:   "704f95f6093bcb0a7e05a5dada76db9d9f432a54a1d8c53770524a3af09de35b",
         intel: "8e281be215db3c6e855febffff24d9ed554e1d53a81901b29803bedab825d0a5"

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
