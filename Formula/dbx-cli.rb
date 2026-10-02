class DbxCli < Formula
  desc "Command-line interface for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  version "0.4.104"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-darwin-x64.tar.gz"
      sha256 "6f1ee937dc62b87bad9728badbc0d55da8363f515724c944bed0202e0c16de89"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-darwin-arm64.tar.gz"
      sha256 "1f7476dd8d6e07d28cac243d4214a7248329b6e4ce0c9de6751459e8b91e0ba2"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-linux-x64-gnu.tar.gz"
      sha256 "06194282d7aed4c1ee3ff5c6a4682c0e4a7c81cf3b7b7933bf51d5f3919afbff"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-linux-arm64-gnu.tar.gz"
      sha256 "12ba3d4432ebbc6d22ae409d9236832d8cb02da2dc76eaa7662c6c20ad1e8126"
    end
  end

  def install
    bin.install "dbx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbx --version")
  end
end
