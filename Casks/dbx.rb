cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.42"
  sha256 arm:   "009ee3106c4a7395eaa167852f2d973861c2acb9c8fdb0cf98a129adde576faf",
         intel: "44f8525f27c46e96933ecc95ac5dfe4640832d1e3a9bc9bee6be1d7b0e6dffc7"

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
