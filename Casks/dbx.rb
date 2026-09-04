cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.3"
  sha256 arm:   "78c1487f83489c3a9b70e7a7c9bfa801adba60946a1c03e2130e35658bdd9782",
         intel: "6c7b29a85868e39bc4ad863238d645713fc4d21dabbca165e627a9bf1ee9f05f"

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
