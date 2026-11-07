cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.6"
  sha256 arm:   "9941ae3e512def484f1b86604ed63e2e12e7e188659688b120012113e005caaa",
         intel: "a84416b95929c14c062c245c6836a9204e5dbef3db32875f8f031aa456f5db23"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
