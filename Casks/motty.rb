cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.5"
  sha256 arm:   "ed8c170a3111812dd3d3330ab94d98768cdd4bcce286638e666ec4a8f44ff8d2",
         intel: "b79214df04ef68185dea032bfa8b4757efd9436861887be7cdb52ccf7e1584a3"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
