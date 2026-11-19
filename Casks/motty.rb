cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.16"
  sha256 arm:   "a4c9b04103b1082778de9c8b2f3a827243f868f27f453be9d38329e02747389e",
         intel: "0bfd72690a2917c7b0e1d8e332696c55dee175bada4421615c52ed58b33e8de2"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
