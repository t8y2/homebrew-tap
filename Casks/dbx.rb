cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.48"
  sha256 arm:   "e486b83f294479040d89d1a150354586f17fac274b9a0cf3b091dee00ce6a453",
         intel: "5bbe24db982e5195d20be4e5fc91b03c3e7c83a247dde17b1debcc6e4357256b"

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
