cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.21"
  sha256 arm:   "df284ef7a65e7e5bb9d88cb3c9ccd59ed9c4a7723463bcfe8024d1fa1b71fd3a",
         intel: "1098725d6779845f08a0571bee96270fc0b7d3475e55abb1e9a65ff6c6d928cd"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
