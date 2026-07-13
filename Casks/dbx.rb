cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.55"
  sha256 arm:   "4be225c0646f09dc76478109276ff3e2e1ccdee0604cf65e2fb3bcfcd82bfee0",
         intel: "30a4b90df0376dfc4ef811a69b8973def823470d10da8ea8719a0311f9315b7b"

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
