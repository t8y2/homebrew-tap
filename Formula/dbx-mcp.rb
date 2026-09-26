class DbxMcp < Formula
  desc "Native MCP server for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  version "0.4.98"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-darwin-x64.tar.gz"
      sha256 "5eea4278159ec4ce22b9b83cebec63d7616f1ea7eced538d4f29845706dccf33"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-darwin-arm64.tar.gz"
      sha256 "bfc6935229d39fca00ee333d4770373387aeba990609104cfaea841c90107aa6"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-linux-x64-gnu.tar.gz"
      sha256 "c7a6fe467eb7877111fc5cb31f92a3c9a848513c2f956a539d01c1cad4f82b70"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-linux-arm64-gnu.tar.gz"
      sha256 "c9191ce67cefa65ba39a4bb177734e6e158a083bc2699daab754a5d32d9ec32f"
    end
  end

  def install
    bin.install "dbx-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbx-mcp --version")
  end
end
