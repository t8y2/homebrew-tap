cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.87"
  sha256 arm:   "3b368ca6dc454e0d6b66450a4f766bfee26017c91f9a08e0f33c14cb61ac3898",
         intel: "17e9d78023fc6ac41305c90bd934c3edbf6b871dc65484fc90831625319b0032"

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
