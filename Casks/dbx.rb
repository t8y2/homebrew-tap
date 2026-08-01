cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.72"
  sha256 arm:   "baadc9404abf2c019d02e7f3a83942736a154613d10d908741e2d65e73522256",
         intel: "6a5aaecd9b342a9bc685accef943787415909a81ee6f9f94d45302893c877855"

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
