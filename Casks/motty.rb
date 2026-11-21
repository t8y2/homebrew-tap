cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.22"
  sha256 arm:   "e6f92d441b86bbacf46603e8e5987120c15b12cdf0063799aee5a63f2df98892",
         intel: "4693a559062c3af7fa504b79801ca9e4f275270d19e6bd5bb63553360307e012"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
