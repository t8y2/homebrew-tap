cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.19"
  sha256 arm:   "abf2dc496a1a28521f0fed9a30fcc72b8f94ec887ad3842e108755d00db6a2f6",
         intel: "88bd67464f1b364c8bf33da253d38d5a4070091cd7a2510ce8bdc9c2daa292a8"

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
