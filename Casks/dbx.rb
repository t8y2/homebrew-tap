cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.7"
  sha256 arm:   "0927d594c1370ee741fe694f1b6b6e22b4f7a2c47f00082c05a30da914191693",
         intel: "863a6fd64972c9a688fd2ffc2c0739d34e326cb4e0253b93c30554773aa498f8"

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
