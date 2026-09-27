cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.25"
  sha256 arm:   "13cec9a674674d50ddd8f350a57bf8b3afc3e2f5872249952cfc4169d2ce2742",
         intel: "709e1e47822a4d3a4335b3cbde468cc8cf7481fe2516f102873338b34187b666"

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
