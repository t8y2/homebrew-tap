cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.83"
  sha256 arm:   "a9e77774f505a21d257dddded5dcf5d590c4e37c189bfd3b6ac7f38fffe384d6",
         intel: "2eff7e5d52d039a70189dcc0dd2b2797d953d997774404a0e3024f18548ecb97"

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
