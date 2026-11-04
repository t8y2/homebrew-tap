cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.2.9"
  sha256 arm:   "2e847fe939e0ab99aaf73665624305644f60c780bdec1d42fa89ca48bbb35083",
         intel: "5e7fbc6db105c4be0d112a8ca71c426e3734fb32e4e379e0e55bc92e587f50fd"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
