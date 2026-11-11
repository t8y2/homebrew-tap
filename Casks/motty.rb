cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.1"
  sha256 arm:   "3f3863b04b7b83e06c4c64b51769097ba15401a30bd63de1b616c36ab30a3483",
         intel: "4be2dcac7f626941c41f11eca59730493753afea31365e9b2f28145bd7cdd0c6"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
