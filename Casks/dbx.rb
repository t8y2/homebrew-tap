cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.72"
  sha256 arm:   "4856a6a66afd0752c6abdc3b12c2e391b6bf77063effa7eb550965aa8fe8ffdc",
         intel: "39309b5eb8600b016caed0b72369e3c1f539c6979a06810705074da54b7eeb73"

  url "https://github.com/t8y2/dbx/releases/download/v0.6.72/DBX_#{version}_#{arch}.dmg"
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
