cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.62"
  sha256 arm:   "772f614460db245d0e9e71bfe96b1ad004f30141f73615d35722d93083ef9934",
         intel: "892eaace7c16ec140cb225230dbfd9bd2b7333f5da0f598c2f6c9b601531af89"

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
