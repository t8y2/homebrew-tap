cask "dbx" do
  arch arm: "arm64", intel: "x64"

  version "0.6.17"
  sha256 arm:   "1a0dd52444b25fd6a6c51c549b2e73819b17bf575b2f6740443b6d8668aa2e14",
         intel: "710765183937c07397d2ea133df0bc5e37f38535017322f90cd4e5345a8f7748"

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
