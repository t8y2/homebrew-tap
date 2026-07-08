cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.50"
  sha256 arm:   "0c4300cef84fb2b5efcb7cf1ec6e0ddb4e09604067744b084809b3f176ede6b8",
         intel: "2ba5b5fe6a9e5dd8b7872c539f7d7ce3b1acb3c6791e8b2f6e7e7acadc0919da"

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
