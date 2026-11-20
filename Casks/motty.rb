cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.17"
  sha256 arm:   "7cab436c526d7f91e8942c0d7a1ecad69055db90dcf981ee6b94d91021da1493",
         intel: "6df4b3c6e1e933737a79a464b688f539de98c64bdf92eafcf64c4c5807c03370"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
