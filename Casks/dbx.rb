cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.53"
  sha256 arm:   "12efae0495ee5362a9f5efb857a4cb185edc28fa4c2c171812ff4270276e906c",
         intel: "d0099d8b549fc54339cb66c5603f0b1078d57440b5fc8ed4456828a1c3561c05"

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
