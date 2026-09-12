cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.11"
  sha256 arm:   "fdb2cc19d5af509570dc5b9d19f42dc0e122406e88dc4623d769325fea2b0acc",
         intel: "427dac63052828d518557bda6579efee7405811f3e66c68c09758b9127c7579a"

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
