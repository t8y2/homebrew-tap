cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.64"
  sha256 arm:   "815cd6976b494796af685d602b359a237a622d9e7ab6639bab5fad4eec8dfa79",
         intel: "1fd7bc4b63b7684f78d7e6441cce98de94e261f5b59f79d675bf7f1d2c1d9351"

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
