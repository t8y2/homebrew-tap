cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.10"
  sha256 arm:   "5e1e85b0501b95146356a8fb573e530fa525dc68e62de1c355bee3b07240053b",
         intel: "5fdc73c34986d2f547d192644fe63c3056aa80fe25ccf0d0e2d0ec991255ef40"

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
