cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.76"
  sha256 arm:   "43ee77dd070e55c31d6f446de5fe9bb4521bfd97779d1bb0445928724527ffa9",
         intel: "4a94c8fa3035fb78d19032582031aba3d0f62309d1d1a94d3d3e8e974c8be105"

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
