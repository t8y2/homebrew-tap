cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.4"
  sha256 arm:   "8a8b8e3e6f78b4cfb0e0952108f48a4e1b2c30fd83da56cfccd2d10a0ddda4e7",
         intel: "7ac26c0a25f88e03df4a40513e0dc56fbc87d33746b4ab63fa7f80e66ec22203"

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
