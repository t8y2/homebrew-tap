cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "57c92e35e60b95c3ba9e8b813369036cda1d6611f298fb2543da2a86dc5333c7",
         intel: "6a6c5b595fcc11c0e54c42e4e9eac103845bd0b2e4ce5717a179099e314324c2"

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
