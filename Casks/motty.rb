cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.19"
  sha256 arm:   "362fee72af880076167a2c20f8fcc901c92221bf820a6d6372c2e741875c4d6b",
         intel: "1c193f5cfd554e1ef2849db85e8ea941fe0529f4b8413a955cd6e96d4512995b"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
