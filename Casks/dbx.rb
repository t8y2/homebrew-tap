cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.96"
  sha256 arm:   "8c9c17adb8b5d94fe1f279d1949bec50cd48f5cc42a180ce4a1113bc6ff9105d",
         intel: "fd2d22d09651de30481b2ad6240c6a3b5a450edfbd54ee9835663b4b45c080cb"

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
