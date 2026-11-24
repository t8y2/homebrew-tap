cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.30"
  sha256 arm:   "1c436102a6741ff3c7879754951244011a2e949c4354680975714a4d0015ef93",
         intel: "72bd8ca381757202fda49a7572159c5be5fefbe9c63979f47b04ffe7928ce410"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
