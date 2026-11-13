class DbxMcp < Formula
  desc "Native MCP server for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  version "0.4.143"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-darwin-x64.tar.gz"
      sha256 "b92412a809c3d4b5c9a39c1aa230aba1fbeb95f65e92cec88260cc85768b85e6"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-darwin-arm64.tar.gz"
      sha256 "6fc1b0c4634ce7169a1a2a6cf57dbbd29aca9334fe99811bdefd7a53db13e341"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-linux-x64-gnu.tar.gz"
      sha256 "adb0704980718e71abed6cce9ec7851328567b8d44a8285d3c8386606db30c62"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-linux-arm64-gnu.tar.gz"
      sha256 "1965f0d4247c35158a61ad8dc574addbf07a4e5a1f9d0e2596889b605666454a"
    end
  end

  def install
    bin.install "dbx-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbx-mcp --version")
  end
end
