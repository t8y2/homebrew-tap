cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.61"
  sha256 arm:   "5b302f174d4d352b8e4560d70a1f6d951d911d24407586d8f13439d85f759512",
         intel: "89dda96dad24bbd18968399230e1cfd41db4bba68faee1e8513407f9552ea0cf"

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
