cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.32"
  sha256 arm:   "c711b8922a489ba8ff5c10c812f28b28b80bca46df5a4ed1dc916f7b7e980937",
         intel: "8b3c49ea4136da3edd4c19fba21f5ca3981239137ad6db3501e20d29811b07a3"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
