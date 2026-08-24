cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.93"
  sha256 arm:   "71813cd671487f109effedaf58c31d0422be56b40047dcbd4d2e30a1c090fc26",
         intel: "0c0bbb1db49844893bd0f7371b73bf180f1ceb4463f94a08bdba5cb7e8eace61"

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
