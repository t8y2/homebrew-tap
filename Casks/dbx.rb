cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.74"
  sha256 arm:   "a4aaa491a00a29cb90a1346e6916213909cbc588d3ccf6826ba9e80e2d52a7ad",
         intel: "c9744ec27748426e0baf60ba9267e7153914769bb60ccc013821c99f5102e9c3"

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
