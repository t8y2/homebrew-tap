cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.67"
  sha256 arm:   "02df2c38c9f7229498e075f0ae02c1ac249ab5d08a33a5f1eb31c9410b03af67",
         intel: "4041dd4d0794b97596245ad21ba915e5cd8b18ee8c3345afdbc281fa96f85fde"

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
