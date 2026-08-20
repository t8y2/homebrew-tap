cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.88"
  sha256 arm:   "6867f718354a66b22eff5d4058f9405dc0941bce29fb486894545e61d535c393",
         intel: "ef7ac6e31cfbbddc1b7e199b810147a0453d32b125575370dfb23a79844f8f3f"

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
