cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.54"
  sha256 arm:   "a177c34cecef17ca9a191ab66da80f64227688d67895f81e9322481aa878c5cf",
         intel: "37f5d8f87c4c98d85f2e8583a9412591b514e6d1d0d342231523da948acf0b34"

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
