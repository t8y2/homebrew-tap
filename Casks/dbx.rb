cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "eb4db62bc870cf28629263ee05773cd462430984a56897ebb5306435b1a196ff",
         intel: "e41cc9440f18801e2581ee932d642b01b6be2f4d47f280186ed5c817277574a2"

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
