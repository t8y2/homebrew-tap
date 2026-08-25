cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.94"
  sha256 arm:   "da453d221ad410120cbd611b8a0745ed7bada67bb4233ad188b9b1038a3c70dd",
         intel: "e97ab918170efd91d7f9633355cca8513e55725835a59bcb245468dbaab0d09d"

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
