cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.35"
  sha256 arm:   "c1a4592d119d2a8016f549adaaaf16302e777b5b030b4fe414bf6c21efa91de0",
         intel: "35f543ada456d2d9a4acb1ac38fb1023e1221089eb54eab44b7ecdf26ca0f52a"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
