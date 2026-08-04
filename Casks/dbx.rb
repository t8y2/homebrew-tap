cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.75"
  sha256 arm:   "1395b122d5b1ea4a0e8e89310ca957c5b489a49fc0fc80a5827b0400f78a4c8e",
         intel: "663888244da5833eb61f633f45317e1fa7e1904e0cfeac43763706a23dc48f34"

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
