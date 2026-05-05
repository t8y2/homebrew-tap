cask "dbx" do
  version "0.4.1"

  on_arm do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_aarch64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "b0fe773c9375348fd4c56be29e518a4b41f42bfc3bfd6b928ce120aabd532649"
  end

  on_intel do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_x64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "d7b74e6a4315c3e5306dacb4e15d1edd45e3cb3a40993bd745cb82c22973b25a"
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
