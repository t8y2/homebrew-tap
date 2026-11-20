cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.18"
  sha256 arm:   "33e28caa8a7043823dbb289010cccad1714a9bd8f402531e8dab68124025528f",
         intel: "9a3ac2eb9c9535e47d99ff37e1517ecfac19457cb1c304a6f0b656206d06866f"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
