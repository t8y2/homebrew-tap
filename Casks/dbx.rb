cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.21"
  sha256 arm:   "ba6c9fe7252b619f41abeafdacca97477484a5071a512b183a6ac5c4bb67335b",
         intel: "582facfa5d0156a13b0d8e4426957a44ed9e9723fc04e4df7db8b4ff358b8083"

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
