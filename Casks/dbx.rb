cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.89"
  sha256 arm:   "9ac44baea5018ee5f640c46513702d7173286b9bc00b3b8e8c46e8f66ae2e06e",
         intel: "bed4595b66fbff36cdf620aeae916361e7ebfdd3b4b76fb2e0c04f407f667cce"

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
