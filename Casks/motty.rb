cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.7"
  sha256 arm:   "f55ec1744b9b0b381d3091cd9c632de1214dc03965f24fc9ad9afbe92fa597a6",
         intel: "feab6f497fb6b97d980319b89f0b74b3cf3bdbc2553506966eb5c105e17b6ed6"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
