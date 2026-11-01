cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.63"
  sha256 arm:   "3116d422237c9aa667f169c0447624516e2192432ba502c51aabbdf829ecc88a",
         intel: "ab82fcd868512d9f22f8f2ad86186f4634094c95e4a8144af90cbf0ed51231d5"

  url "https://github.com/t8y2/dbx/releases/download/v0.6.63-beta.20261101.3/DBX_#{version}_#{arch}.dmg"
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
