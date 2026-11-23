cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.27"
  sha256 arm:   "7bcb1f31b130edb9da79b4e6a3a9fb75d0879c5d815a213075d2d233cf63c80f",
         intel: "0102b81e41f9e25e6f8f9a610f156aefcfb2bc402f813fd1776715d604dec710"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
