cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.2"
  sha256 arm:   "0ee822dffe81f7600cfdb0f77ba443c5091263396fa870187fa093400519f350",
         intel: "19a28acdbb6b757849fcf13594f84283be8c393e0603e6898932cc65e51174f2"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
