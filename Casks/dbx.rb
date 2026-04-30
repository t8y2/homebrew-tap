cask "dbx" do
  version "0.3.0"

  on_arm do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/dbx_#{version}_aarch64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "a8c0dc76e8103f7120c546f5630ce0e93939bb221218310622352f6c5ef6f5fc"
  end

  on_intel do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/dbx_#{version}_x64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "82ee4a16c11d58f98644bbe3a9f716a6fef3121a75a05438a829eae24acfa5ff"
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
