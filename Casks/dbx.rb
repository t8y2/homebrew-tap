cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.27"
  sha256 arm:   "ca128fe9ab37ebe323a2165813f5d1f1ea72405c38953b400952d16ed492da4f",
         intel: "6f073f0e4ec656f23c516c930acc88f9155f287be9c1de2e45ca5678b1c2827b"

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
