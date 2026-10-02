cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.30"
  sha256 arm:   "76ec4d77fa9420490b2119c4e9fe65a7396a97ed86fe28b0abde1ae579694c49",
         intel: "24008a7d24c7e3596e416c7e19131fd28ce0323ae485f57e43fb8baa2c780f3e"

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
