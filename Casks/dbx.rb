cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.44"
  sha256 arm:   "5f6bcf8a690a61a3b567309af81fc211877a9b29fdb326674ec69f4388f8efb0",
         intel: "5464872dde3b15c0c7d2e9352feffc8ad6e0947a9e99b1426bcc222fc566315b"

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
