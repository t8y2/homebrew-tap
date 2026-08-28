cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.98"
  sha256 arm:   "c4a2a0d476174857f878a1b107ffc547d6234c72597572b98ae7d0253426f18f",
         intel: "b9a33983ba6d3070097c1e3275c23f8554320b3e73bef5ac97d40e1546b82782"

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
