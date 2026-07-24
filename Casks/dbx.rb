cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.66"
  sha256 arm:   "97850b1f4690034cf4e7d77453f22b96d7128cad05e81ed8f621f43d0bab2862",
         intel: "279fcf07b77cf797659e36220a726b2fc5e416f687e03ff9ef7c6bcca2bb7059"

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
