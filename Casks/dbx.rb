cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.46"
  sha256 arm:   "87e46e388ce6c3f889a2e61e039ee95e1dc6bc42d4aa1ccfec011dcc10756bf7",
         intel: "72e32f32ca548f5dd2bd8917bddf96c446078f5e6cfc5ae7aecfbc5b8bdfc741"

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
