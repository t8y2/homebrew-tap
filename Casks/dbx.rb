cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.71"
  sha256 arm:   "afeb94d983435117776fdfc491c6e91106d4aac01620073c9107d06ba5634a69",
         intel: "be62dde00b2e829ead60279cebbb2b4c5310bd31a5dfed77aa9d041eb870d578"

  url "https://github.com/t8y2/dbx/releases/download/v0.6.71/DBX_#{version}_#{arch}.dmg"
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
