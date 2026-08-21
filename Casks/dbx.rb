cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.91"
  sha256 arm:   "b28956dc1e2bb5d7b3f5520a1834654a08c9e063c5d2be111ed0eef054e2db9c",
         intel: "50daaca263de26249b29ae530d34c3c6eb342fbad4d213d65328d031741e19f4"

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
