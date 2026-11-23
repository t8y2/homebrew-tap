cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.26"
  sha256 arm:   "5f9ea070852f94d82881ccb73fd73bdd04996e43d4c892c51e4383dfeaa9cfdc",
         intel: "a514ddad879f002c49939c4547488aad8dab726cd73591d2f5cb682862ab968a"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
