cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.24"
  sha256 arm:   "442580b02fdc9dc50fa2455eff5c5cd1b59d77187c1c3c224ca89c4702e63bf2",
         intel: "8b31d3c5df2e0354ec2bfcc77274527d94e1d18be5215364d8d90d8f5da0d97b"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
