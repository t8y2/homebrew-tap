cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.65"
  sha256 arm:   "fc18058ec19abef8f7292f8d7aed6c2e1059cdc36e6cb2257cb6bcf7fa34ae33",
         intel: "1408c35ec442ae68c1d3d7d9d8f266f311b6552b2dc03b4852e7d67d15eba643"

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
