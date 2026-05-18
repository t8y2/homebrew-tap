cask "dbx" do
  version "0.5.11"

  on_arm do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_aarch64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "a401b3c1382285b7c8777a6df366df85e90097a615d3d5897d160d8cb2a69430"
  end

  on_intel do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_x64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "21c401680606c20a1e17489101e998606a5837ae7616bff826715c44123d425d"
  end

  name "DBX"
  desc "Open-source database management tool"
  homepage "https://github.com/t8y2/dbx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "DBX.app"

  zap trash: [
    "~/Library/Application Support/com.dbx.app",
    "~/Library/Caches/com.dbx.app",
    "~/Library/Preferences/com.dbx.app.plist",
    "~/Library/Logs/com.dbx.app",
  ]
end
