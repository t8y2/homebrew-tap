cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.68"
  sha256 arm:   "7fe34b07e7b8801e485f3b276b755b76f4ec445bd07178e347f7ba94d5bbc3cb",
         intel: "1b6a82d5cd08d24a7d16f4b66a8789955fb56bc473c2601bbb8f57f59669bbd5"

  url "https://github.com/t8y2/dbx/releases/download/v0.6.68/DBX_#{version}_#{arch}.dmg"
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
