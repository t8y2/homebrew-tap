cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.63"
  sha256 arm:   "8c0a98787256e333dc6a66fe77cb5ad998986286c00b873204d9c3177114a09a",
         intel: "b0540b4c9e51e668777b0f0930d10e2772af627f9090d1cf0dac8ea8cfb6ff5f"

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
