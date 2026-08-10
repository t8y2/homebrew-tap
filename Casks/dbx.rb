cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.77"
  sha256 arm:   "9d0e3c576aa389df9aca3b329d11cdec3219d6ce0bcb41eaec3f8e6ff5fe3bb1",
         intel: "29fc8d0999b2c472898e10666ef87717ac3c39674e033c9e305c0764756f0e87"

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
