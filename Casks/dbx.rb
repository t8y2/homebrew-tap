cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.47"
  sha256 arm:   "7299d601feeb255033463b2a9d39307302010c3730be73799eefe4f440f4becb",
         intel: "544e797df8719ba7faf0c7d9b0e6bcf43ac42bb06aae3ee27151c4e9fec5e81e"

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
