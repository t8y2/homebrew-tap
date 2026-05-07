cask "dbx" do
  version "0.4.3"

  on_arm do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_aarch64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "acce9ef15f6b470c29c6ac508b8ba642eecc2ae99f6ff349bdccf3018a7f5d32"
  end

  on_intel do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_x64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "fb6d65dd18605f4f01a122452bde17aa7c98d3610170a747f354f1cfd95306bf"
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
