cask "dbx" do
  version "0.3.4"

  on_arm do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/dbx_#{version}_aarch64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "f85855e1be188391fb73d9d974819f6cda22f298625ed4b31edc264dc1f9bb7c"
  end

  on_intel do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/dbx_#{version}_x64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "6aff19dedf19bf659e0be6aca55695a77fb0da9e0012cbde86cd28cac9dee25d"
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
