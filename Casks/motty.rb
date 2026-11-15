cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.10"
  sha256 arm:   "67cd60187685e3b03dd1128b8d650177c8de316f17b21163bf925b044a69d9ba",
         intel: "ce75fbc713a8aba630b97bd43defb77d4839f3b402c4e3e566add88bf33f29c8"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
