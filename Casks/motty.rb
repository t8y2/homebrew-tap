cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.20"
  sha256 arm:   "1435c87aac756d7ea010be1188856f0da8b2b0c4429f4d76e3a42f88467b62ab",
         intel: "ef14c9cd34b6d72c7507e4e4f683e22fe271879b684d8977a929eb023df8a417"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
