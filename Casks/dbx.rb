cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.23"
  sha256 arm:   "c1470ecddbd2f7c854c6951ee2a5217c972be7579d1350a4600426ae2f158191",
         intel: "9d40c0f55d33664741d869a193886309babde894d598f8178b4af599cc0b9f2b"

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
