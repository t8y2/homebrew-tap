cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.26"
  sha256 arm:   "4ba3f26dab77a7b49727e6c5bc90a9f117a6b8fbae935c52a5a8314e2c66046a",
         intel: "37e2664d2694627c77dc117d76389af361ca96a94050e2a94784317e16cbeea3"

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
