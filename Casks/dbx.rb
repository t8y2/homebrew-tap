cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.13"
  sha256 arm:   "5b986d11eb6c7fbdabd6dd0bd2d4cf5661d8841acfbe83ba2d0b539054962aa9",
         intel: "39757b433d7adf99ee5e1752a1988336e19754df9ae126968dbdc52c67dc46f3"

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
