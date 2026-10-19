cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.49"
  sha256 arm:   "27a1950765e82676eae94e21f70a8702a7cfde4864e31b7fce2561fa2c371d7c",
         intel: "6ec11bc8e05c0687501a1a3f13b93474f30994bbf9224406527dee101c37c944"

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
