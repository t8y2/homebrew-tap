cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.31"
  sha256 arm:   "82cefbb9cf5398d19fd68010f4145437ad1f79627e439f904ceff09a2cc90ed5",
         intel: "7e27b8894532c97ccfa4ee94ee972053dbc4e0fc545619b2ae58aa7f4a68634f"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
