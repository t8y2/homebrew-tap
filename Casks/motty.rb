cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.23"
  sha256 arm:   "83dfb92ae1ebda03ae907ef880fdf1f85b9235a8ddc62de653fa12ddd189aab2",
         intel: "827c33ed63211c6c975b8ecb911898b8a5ddc861397d8571c2a955f22dba4ab6"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
