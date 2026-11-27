cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.37"
  sha256 arm:   "0bd9a5ec504ffa8293c1e8730c7aa239d93029640ed900e644420e62e9284844",
         intel: "8b7356295090bd0e5a050134b43f743c2b5c80d3d1e4a08039887ed55807d980"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
