cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.3"
  sha256 arm:   "83380752fbed1d8385eea0d34f4c7a51a22826470a8d558db06d24b02b244d97",
         intel: "a2087e67a69aeb62ba6f42747bdc20b5a870c47c8036250cab1c28dba370efab"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
