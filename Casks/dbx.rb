cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.85"
  sha256 arm:   "9c7c875cd56cbe70eb18cd605f264705f593ebbeef29049ef18795ddfceac167",
         intel: "e298fbbe037e4c2cb42fe05d1dac3ccf3b36b55a5d3192e218b5b63726e1f826"

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
