cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.60"
  sha256 arm:   "8c88edf8cb6ab9b476d4889dfe504dfabe9781ec3a54f79d1bc7a08c2003d706",
         intel: "54241dcb410ce35bde7e3b5607dbd2be67311ef65402e5da11071ff0ec46c949"

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
