cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.8"
  sha256 arm:   "012633bd4fdc362775cb5e578fced8770a79fb8655c2628436d1a01f15fcf952",
         intel: "bd097ae718cfe6f72b2bfa532b9baa643fb0cf85f1c7d862525854ca5544319b"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
