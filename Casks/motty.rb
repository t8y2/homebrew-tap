cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.3"
  sha256 arm:   "8f3e727bd0f7a37dc108c985db1100bf8a9c2db5694c4323516550d87b3b49c7",
         intel: "abf82fe0a9499bdf12e21a82aaf21e2bbc1a7bdf654a6d53aa9f28e0cc99529e"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
