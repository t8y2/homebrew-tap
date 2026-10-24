class DbxCli < Formula
  desc "Command-line interface for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  version "0.4.129"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-darwin-x64.tar.gz"
      sha256 "55d37e1280e0f2fab6b59977e132b777538d165ad9b9d7745fcbeaff154e25c2"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-darwin-arm64.tar.gz"
      sha256 "ebe180aaab66a90b84ec5b0970d101f36c9a4cf1fc37e996b0a786e350fd27f1"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-linux-x64-gnu.tar.gz"
      sha256 "8093c4661b167e430c37352c764419b9a8986cc897303b3bc98769fc6f1faf75"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-linux-arm64-gnu.tar.gz"
      sha256 "2a5f77e31bc2fdfb2cb53c0537436f126c54c1c30679bb10f069f5b1d7374c2c"
    end
  end

  def install
    bin.install "dbx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbx --version")
  end
end
