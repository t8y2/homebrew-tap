cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.69"
  sha256 arm:   "54e6af0dd229a896cf45e296400fe44adcbb062e99b2598d4f3324fa10d88bb6",
         intel: "9f5e295bfb8ffe668881a4b05b970dfeeb1bb5d465a12e5fc6a8e7bae534f634"

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
