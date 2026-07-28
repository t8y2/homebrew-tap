cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.68"
  sha256 arm:   "fec35c3053482c3aee6239023eaffb460e6b591fd16fc3a03e3ad3fbb9fd2762",
         intel: "f525d026e718a824906d31740d58844907ca1e3d349fa605223b6a3af568dbca"

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
