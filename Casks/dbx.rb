cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.24"
  sha256 arm:   "7851fdf7be6a7581568d6a5daf91ba0a091855506c2665f4b467dfc132cf9611",
         intel: "6adcc370086cfe85f918efdef4cdf5f8aaf48f87cb808f93f3f2316b5539f4a8"

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
