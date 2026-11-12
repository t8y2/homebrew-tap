cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.2"
  sha256 arm:   "28df8f342b88cda2133211208540cb0e1a601b29a12bae2519d2df1c3ba0c21e",
         intel: "459e9c0577424b26cd26c8a4bbcb7868e00dc5a88013213e4c61426bf1fc08bb"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
