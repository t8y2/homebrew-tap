cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.14"
  sha256 arm:   "c7e7d000ba49a98ec2daac8309b393f977a2c0b4e7196915a3ccfa61ba966312",
         intel: "b418ef531d3d80c09e7ca5dd1cfc9657a1916758cbf8633ab5d418c8734acd72"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
