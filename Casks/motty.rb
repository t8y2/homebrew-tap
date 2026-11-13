cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.6"
  sha256 arm:   "6f3c3855d27d4995f8c8bf797695b67d0e4c09f9420d4c0c80239a64eabb5463",
         intel: "6d4252bfd85fe42710d06217a4e7092f5bbfa54d29532f551c9a7bca00acfe28"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
