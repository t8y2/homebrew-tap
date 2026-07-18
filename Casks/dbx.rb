cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.60"
  sha256 arm:   "0f1abc90e7bf3d2e21a9f4bcb431438ef0f63e4882af3ef40654b14a6bdf0be5",
         intel: "94abda7ceb166b0168be860d75c548884e9d8ce49b9fcc43c18a94cc19fd257e"

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
