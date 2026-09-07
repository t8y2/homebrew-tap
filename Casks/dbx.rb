cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.6"
  sha256 arm:   "861b2f59998e0c1108c4bf1afa682bc6047e69d4091b076bb2f5633dfae451f6",
         intel: "8f648e4fc31cc89d5c0be35290df6f804a8f2ed959decda80c184dab6e9ba369"

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
