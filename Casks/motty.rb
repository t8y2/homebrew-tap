cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.1"
  sha256 arm:   "cbc8c7b0d5f3f55e8b420acce06cb50a815d9bde83297862efec6a7914ee47c6",
         intel: "2e39bdbb8aff11a675b8acf9755077cdc4dceb83a5ace827d09d13062ae98839"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
