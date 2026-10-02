cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.31"
  sha256 arm:   "75fcc5a0299e19e674450b13b07d942057f0fb9b9d1a4bf0c37296ab47d7a7a9",
         intel: "96ef93c811da952b9a0dca03492d9b8d91d880a5762ef8e33e5facd149497d1d"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}.dmg"
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
