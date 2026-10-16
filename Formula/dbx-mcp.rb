class DbxMcp < Formula
  desc "Native MCP server for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  version "0.4.122"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-darwin-x64.tar.gz"
      sha256 "6e3822b8f22aee4f774e3beaaeeedc7f0c4f74f2f0b451ce51d176407c6a7733"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-darwin-arm64.tar.gz"
      sha256 "e1e8fc31c158d4e02b5bef27efcf9da96305ad5be4e844ee1b9b06aec0c50620"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-linux-x64-gnu.tar.gz"
      sha256 "eb33c6f44a99f6d668fb26acd332959c5e643d4474434da3aef3b5ded0ff3d34"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-linux-arm64-gnu.tar.gz"
      sha256 "a42d2c5d2a4820e4d1ae8d7a940bcf2734bb211ed0dcfebe004b0273fbe6bcb8"
    end
  end

  def install
    bin.install "dbx-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbx-mcp --version")
  end
end
