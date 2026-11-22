cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.25"
  sha256 arm:   "1bb1a46652c102dc1dcc899c1627e6c79b7d9d320e9fa96786df098c4925dfc2",
         intel: "26fa91fb138ad790388323d95477cd44bc4e7ec8e5b522ecc75b6e1c23d3a5e2"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
