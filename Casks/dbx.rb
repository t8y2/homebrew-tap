cask "dbx" do
  version "0.3.5"

  on_arm do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/dbx_#{version}_aarch64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "5ce563c7a0febd365fe5d9267a694440870ca38de8bf6838c025be76562e3edf"
  end

  on_intel do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/dbx_#{version}_x64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "aa7ef309495317dc805d8aaf0bc22b406ae0aa1aa486bcd9fe6c94b157e6597b"
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
