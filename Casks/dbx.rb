cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.9"
  sha256 arm:   "280fff5cd03daa5b3595d08b8268003b1491304624ba355a4f9f5c0be7b2ed15",
         intel: "0b359771c68fc2959a528cf1ea8b9cd9d51a8adbd22538d585d7ababc71aa3a3"

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
