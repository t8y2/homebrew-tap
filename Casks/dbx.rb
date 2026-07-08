cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.51"
  sha256 arm:   "d871cb95d5b82ccd66d323d0cdf3981be101d3c5590362f01999a99884afaae8",
         intel: "79392f1a67932a0db30c2fbd407119e25fd3f3fcfc1b3d01f18e5cecbadeca45"

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
