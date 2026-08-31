cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.99"
  sha256 arm:   "54f979afbc88e2c498c8abc0d3f3cdf1a27c0614055cac9e3c2cc8f7b7a94ad1",
         intel: "6f8456487fc123923485272a675e5de749b8fbcfd491ab421d18b2e06777bb52"

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
