cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.9"
  sha256 arm:   "497abd0d929403d02a3c2465944386e231225d7ae5fa3704d75a571a9ab77474",
         intel: "21095634ac2e38a3dc5926e9ee2d0e8e2fa8a72ea162b3d14c1d69f3c483100a"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
