cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.33"
  sha256 arm:   "8b86a3ed3efb815e7bf5ac7ff934a9bb6179a370c49d0e62197bf5d3a90fdff1",
         intel: "983b8edbf5f20dd6bd74763c115a6ef7fe1e4bbbf58099a1217efb9e98e10ccc"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
