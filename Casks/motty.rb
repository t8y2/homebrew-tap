cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.4"
  sha256 arm:   "dfcf664bf5fabfef57ca54651e1ca4a052ee63fc20e95793c2638c708646da92",
         intel: "f2ab80b418bbda1c0083935ec598eab4fc3cd0460927d8198383d090a7550983"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
