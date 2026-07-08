cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.49"
  sha256 arm:   "8009a41ca3aba0f1f2e702b116d600c60ae11fc3bbd661e91a39ea0440c225d6",
         intel: "87914a28410c5585d25da3784317777d70fba9b350ea2bfe6cf2ec0919848a5a"

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
