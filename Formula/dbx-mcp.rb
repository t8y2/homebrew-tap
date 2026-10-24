class DbxMcp < Formula
  desc "Native MCP server for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  version "0.4.129"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-darwin-x64.tar.gz"
      sha256 "bf7eb09de032126e2e021c3f8d55cac2105139a5802b64d13b2c81e0f2eb065e"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-darwin-arm64.tar.gz"
      sha256 "05fb7711547a8322ad09e7ef4fde30cd935a50f995486a2b4b43c9d2115f1de4"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-linux-x64-gnu.tar.gz"
      sha256 "392f55b15a1c8ba44a08f466de7d24bd4bdee96165af38bf5bd497d2ef09f603"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-mcp-linux-arm64-gnu.tar.gz"
      sha256 "e7952edbc18a16a03ff2a8264f4b7b614699888b37e449afe7fa2a86eddd6e45"
    end
  end

  def install
    bin.install "dbx-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbx-mcp --version")
  end
end
