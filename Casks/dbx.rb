cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.22"
  sha256 arm:   "bf8bed0484c5933b4358919ffc1fa7ba6960f143e5c2785fe3864cb185bbec5e",
         intel: "e6b783676e20170e492ce7b7d8d515f584c99328990c2dc0c1b805effbce64f8"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}.dmg"
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
