cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.44"
  sha256 arm:   "cac1d7858e4b371ff33e5798da00914e6f0d4561b755ed74f109a329c3d21608",
         intel: "7d8e85cf5b5d04a467205691ba06b98e3d10de1d502b3f45befd65e1475c6ce1"

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
