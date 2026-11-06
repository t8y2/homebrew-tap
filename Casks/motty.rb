cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.5"
  sha256 arm:   "fe18130f4658c1ca57eefb2ef222d6fa1f7e1cd5be3daed9b970c50ab626f79e",
         intel: "3eefcd055f0bb923f7fb61aa7ab2ca697f1b62e5448e428639e18a3a8b74b65f"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
