cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.71"
  sha256 arm:   "39b95d141858b5adf16032c6714d285e5c33a70e3460d96ab983a20db9a67d18",
         intel: "f0554c57a7e5199df53c04ecff2a9c64de3ae81e38905305462ecc960a8f1ace"

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
