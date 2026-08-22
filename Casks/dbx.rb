cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.92"
  sha256 arm:   "35b0b1c4e9ad275857c6447a26cafd7d18ddc63e2da6f1e3747ff07a135f4521",
         intel: "5dbcfc833cd12639fb48b4f8f5e12e1c2455f92d27e45a1df04822af1fbe1848"

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
