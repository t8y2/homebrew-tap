cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.11"
  sha256 arm:   "b23fbc8a5ad9a19cbd39af2a099a97b5a25330f094d9233eaa4c031e1ea5bd89",
         intel: "31756fa3d2269151d1e65ed8379e0d26d83f2a459cb4f5fb59870be48d2d40f4"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
