cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.81"
  sha256 arm:   "4528b58ab4d29626d71b5414fffd571d5b07f7a9efb446b0d5659c133d1d20d0",
         intel: "1a09e04cab21018311b134ba618346ffb2f8c42898e5243497535779dcc42d83"

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
