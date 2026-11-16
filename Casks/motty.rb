cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.13"
  sha256 arm:   "49664bf01eeb8ee666c6a50fa69414737c5df7ec78ef29b1af28fdfe199482df",
         intel: "fabb16c75dabeaf0cd78bc412844e0c5e586b027539dc71cab19e68633152c9e"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
