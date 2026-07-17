cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.59"
  sha256 arm:   "3e9c2a515bb690eaf65ae1de01875dc3152e56c97ddc9853b790aaffea5803cc",
         intel: "d97201ff879873e3e6d19aa3488166548ab46d203f2fa3c0af6297ef2d104ddb"

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
