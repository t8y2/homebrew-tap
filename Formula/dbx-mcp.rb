class DbxMcp < Formula
  desc "Native MCP server for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  version "0.4.103"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-darwin-x64.tar.gz"
      sha256 "f4ed1ee5609f9fa872d3c2806564682b8cb1c574150a2e6a8b065e2900444491"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-darwin-arm64.tar.gz"
      sha256 "f555162f8c5ffde8b62b990b25b1b3d2b1ef415b821628766bc25a2c8d14ec51"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-linux-x64-gnu.tar.gz"
      sha256 "fef62b3382c4fbe8fc751b6f77e9466a2ad9c725ca73bd4ba235899a72d1fcd1"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-linux-arm64-gnu.tar.gz"
      sha256 "784e9033118bc0767c1fb81ed6c915f4d171d113008b40611632e85403102a32"
    end
  end

  def install
    bin.install "dbx-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbx-mcp --version")
  end
end
