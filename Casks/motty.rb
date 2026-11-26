cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.34"
  sha256 arm:   "93b240589c87fddd9afbef149b26810ba57e7177c384a347c4ba9cc1b6c913c7",
         intel: "fc7564721ba26205807fc52003897e3edc255dba32bb993bf5ddfd4126dc961f"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
