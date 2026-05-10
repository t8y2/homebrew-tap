cask "dbx" do
  version "0.5.2"

  on_arm do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_aarch64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "390a2acc68146d97e9047ad47eecaea06388f3b339999bc8ee03c375d6282445"
  end

  on_intel do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_x64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "2f6543cfd4cea59b0ff0338089a78c492ed004dabd8e282dcc31cf1d3182e763"
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
