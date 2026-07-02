cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.43"
  sha256 arm:   "93d80db5263f954fcc832886b1a786ccd020203629038b4bb38677c5c02512bb",
         intel: "85ed79c9fe5058564f6f0376136e91f973e5cad22ae1167263370ab3104fe758"

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
