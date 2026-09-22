cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.20"
  sha256 arm:   "e6fe4835731ac646267dbb29b1faa88b421ed5b1439a0afe5e2afb81facdf379",
         intel: "ff9edd5cbca9495badd3a81694fa750560c4381063c43d3bd2308de4d2d4df0e"

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
