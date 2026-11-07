cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.7"
  sha256 arm:   "de8e040a082a74ccee99cc758bbcd5ac724baf5a7dfc8c94bf1b2d7373bf2a97",
         intel: "b273c05ef567971343fe0804a17c35b616e6d5e46bfa39b4ea40d2ab5092006e"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
