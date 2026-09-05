cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.5"
  sha256 arm:   "cdfb86ec47c80f083ae76c4bfbe621549aed2a2ecc6c2dc338ba674dad1d55cc",
         intel: "9d3da3158e34aba1f261212aa6db064655937c8363df665b25950f7f4c7d2a37"

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
