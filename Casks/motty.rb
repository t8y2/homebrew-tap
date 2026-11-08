cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.8"
  sha256 arm:   "909fe9bb0b05e04ce2cda7a7b6d41faa00bf4f17daf94d70fd04ea2b1f431fcf",
         intel: "a1a634c9ac8e70e6fb1fd6de3aa52e40f6a07f2411e47a71f75cc1ab9b36d079"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
