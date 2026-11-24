cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.29"
  sha256 arm:   "a912b7c5682d30dc794b6a0abe80b78d8a7b872f4d126bdced1eb9f363496f11",
         intel: "3d5b66af5706dba0374369b336f1ceeb1b893c16005085b1b612baca5b843743"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
