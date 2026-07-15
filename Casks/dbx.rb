cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.57"
  sha256 arm:   "d1a2161aefc03c4ed1602ac7ea6635457ff7ce7066a08a9efdcedb6576a291ab",
         intel: "2dd4131c86518ea96cd2a8796f7344def8c666734407bc083d190bbcecd322c4"

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
