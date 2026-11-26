cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.36"
  sha256 arm:   "f7c2e63b2fa9bb23cc780e767c2b1e0bb7742f89235cf0aa316d5b8d86ad9113",
         intel: "1ef67ae1074d887aeaef6a01aa2b1757a7c078f6523e7456a1e63d062ca4b376"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
