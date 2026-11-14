cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.9"
  sha256 arm:   "eb8c3b63c7295f390713e540b2fe8bb594820fc58ef19dc4a8f9372f1bdac783",
         intel: "9232230dace09b5e668b0b8f67276bec9229fc59cbada9b0e3ef2a44f4c75986"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
