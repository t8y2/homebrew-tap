cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.28"
  sha256 arm:   "0c1bd95b6128106bf942014ccc83e22a018f7ee5500daf961ae12178a41d63e2",
         intel: "2d4524f661c9833a9887579502d682c8c9a7487c26fca5cc436584b50b538a6a"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
