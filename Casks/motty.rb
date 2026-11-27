cask "motty" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.40"
  sha256 arm:   "6720eb0970c7022550760ad6fb4e8b8929985cda0fd703c3dba5604a7c9942aa",
         intel: "49ea24bd29984198d89fb01f52d857891dc8ec2b286e652e6856267f5110d54e"

  url "https://github.com/t8y2/motty/releases/download/v#{version}/motty-#{version}-darwin-#{arch}.dmg"
  name "Motty"
  desc "SSH client with terminal, SFTP, port forwarding and an AI assistant"
  homepage "https://motty.page/"

  auto_updates true
  depends_on macos: :monterey

  app "Motty.app"

  zap trash: "~/Library/Application Support/motty"
end
