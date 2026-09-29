cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.28"
  sha256 arm:   "b70e8c529c1a371958b7ac1e8ffe55cf197bd0ba6fd919853a76b013ec32ee87",
         intel: "ffb076e3def8355a86fda98d64f399871db72d2d60457b469c3bc56c61c17c05"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}.dmg"
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
