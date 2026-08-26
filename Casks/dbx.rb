cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.95"
  sha256 arm:   "e22a9807ddb4d7548370e199b6a6a2ac1380312b53924a650702a89eeaeb52f5",
         intel: "7f2ba6c814c26a1018640d2f12ca04bbddaf57fd48f0573c953356a223c5bd31"

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
