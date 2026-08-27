cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.97"
  sha256 arm:   "ffe66f3bbe6b888823c19553c9355a3992b3ab7e1a18b6c68d5da288628eb425",
         intel: "a886bb82eeb247a796675dfab9696a10a5fa5a1653703157426120ab143a6b25"

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
