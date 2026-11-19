cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.15"
  sha256 arm:   "70132680a6552a55bd8628e82192fe4d0ab79f5a10b2d0e0ba446e77210a8ea7",
         intel: "8784313aa82c94b3a76ba2da3671cc1f87e1bbcec94217583c52c5b899426357"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
