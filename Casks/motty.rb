cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.4"
  sha256 arm:   "09df324678c49eaea056a98427bccd16f7b732058a74d1ab3a76dfd5a827da23",
         intel: "852402ea49bd02bf86a82a56b272792cf69b77f208c639f25b349c2a914f2196"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
