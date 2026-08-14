cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.84"
  sha256 arm:   "64c040c7b3e08cf738729c1881fe642352c8404d3fb55aa7b493d680af896115",
         intel: "86e18212b4df050951759e260c65f3ca1d46e2a8544085c87f07d06b3033baf9"

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
