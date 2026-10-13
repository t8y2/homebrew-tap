class DbxCli < Formula
  desc "Command-line interface for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  version "0.4.118"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-darwin-x64.tar.gz"
      sha256 "c55f86e4a5bc84af5f41f9e06931f5b65fc9980b5ab68e7a3f3a2e8c0eb9460a"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-darwin-arm64.tar.gz"
      sha256 "30514567960947e2c5514f3b6a1985f9af3a1221a9a09b6fdd0be96c54e02c2a"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-linux-x64-gnu.tar.gz"
      sha256 "47b344338022a9907114adb7b89f963cd1dd5e1397161833e5c9b7e754e638f5"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-linux-arm64-gnu.tar.gz"
      sha256 "1f12ecd96b0099f8722d3abd6156cd985c42e60614413bd3d5af21dcea0e7c20"
    end
  end

  def install
    bin.install "dbx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbx --version")
  end
end
