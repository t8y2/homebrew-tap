cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.0"
  sha256 arm:   "2535a46589e81c7891ceb0f53ee5523342a30a0dfb3ed3aca5ae2b258be699b8",
         intel: "75d081bc319440f6829486e71008b5a32e620f88deb0a7f4aefb5d3cf4c1d3d5"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
