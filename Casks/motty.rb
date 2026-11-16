cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.12"
  sha256 arm:   "2f7e3f2017f672c1a233b47b4486a7360c36805aaa59507c031765c216199a65",
         intel: "8bf74ec50a96424f2ddbc5be463a01d0d728a8ba067a82584987355f943cf719"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
