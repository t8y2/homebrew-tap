cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.52"
  sha256 arm:   "f957a758897d24acb927225b804e9724a94a9e51be9693d0bace8b2f1276fc15",
         intel: "dfe7bd78423437dc0a79b8ceea81eb01f91ff721dc08c1ad81a0371af6bba1b3"

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
