cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.86"
  sha256 arm:   "debe4f5785e6cc20d5343207d2ae1f3028a5dd6c108746c21ba302fc564b2bb4",
         intel: "9e36874ed22e156c57c0f4fb0d24f2182439ae16565d91a67615f1bac8dceeed"

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
