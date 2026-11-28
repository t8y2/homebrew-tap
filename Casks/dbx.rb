cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.76"
  sha256 arm:   "b8d91dfd1f330cf9d20fef65789f0aff67c78e72499858057c59fe49b36e1500",
         intel: "824cb61bb610b3abdbb98e572db9eb2cfd770d88c091c636bfa8dc32c91c3573"

  url "https://github.com/t8y2/dbx/releases/download/v0.6.76/DBX_#{version}_#{arch}.dmg"
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
