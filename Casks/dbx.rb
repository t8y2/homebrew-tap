cask "dbx" do
  version "0.3.7"

  on_arm do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/dbx_#{version}_aarch64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "783b6b5334b29021a2b569b2b5fce25807d6c7dbd4d06b34a641640ca3df2867"
  end

  on_intel do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/dbx_#{version}_x64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "7d8bf6c8ab184900e13a71ab9c96cc322174c7f2660882cca2c1cc2a6ec54d08"
  end

  name "DBX"
  desc "Open-source database management tool"
  homepage "https://github.com/t8y2/dbx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "dbx.app"

  zap trash: [
    "~/Library/Application Support/com.dbx.app",
    "~/Library/Caches/com.dbx.app",
    "~/Library/Preferences/com.dbx.app.plist",
    "~/Library/Logs/com.dbx.app",
  ]
end
