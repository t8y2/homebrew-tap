cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.79"
  sha256 arm:   "c5337af14d71d7b0165093d623e9817bf3ed5698df1e3780f9b94eff8ea7b69f",
         intel: "b94949e9a8893c3aa950acc16656e797ac29dc1638686cd4c3ae1b9e57745842"

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
