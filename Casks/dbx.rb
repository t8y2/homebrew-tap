cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.73"
  sha256 arm:   "b36ff0ad0a99bc6d7d26066a9f4c9a753c390c7bb2dae45bd79396b50560c6e1",
         intel: "9f5684ffd939da42636d80ce844d89daa1631a7b7d7d309aa226def97115990a"

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
