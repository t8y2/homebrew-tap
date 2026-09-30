cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.29"
  sha256 arm:   "557bdde1d021bd53215e39c8247f6a7ba99b1b10365c9f6bafbf3c98f210803d",
         intel: "3314311f9c4363ec4890021baadbc72296c4fb33af045a3624921bf03afe5673"

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
