cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.0"
  sha256 arm:   "d527a9f14ab5a2dfca1adc7b5c0ea3f481ee9f80993841ed9a60bca0343a322b",
         intel: "9cb9009fd82aef7b4b075abd9c39180a7e51831269bb4b2ed2cd382820635bf5"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
