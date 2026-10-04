cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.33"
  sha256 arm:   "458cbc5ae03741a5a0b1ffddb777065a80e2277550785bbdda4eef7a706e1a25",
         intel: "bbfe431f875128d0f3bfba284032c3b2cf2a8e6800137cb1ada312c3bbb82e83"

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
