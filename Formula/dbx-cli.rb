class DbxCli < Formula
  desc "Command-line interface for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  version "0.4.94"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-darwin-x64.tar.gz"
      sha256 "f3c2b79e9bea1801a419aea150aad4c8a111b7aed0f2f1f5978b83e7a85baa48"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-darwin-arm64.tar.gz"
      sha256 "98cdd9766cf63b4536be58303f888a482027b707a37e4cc188bc8eb264d89a72"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-linux-x64-gnu.tar.gz"
      sha256 "8d46b6cd5eec5b072d5b597349c237192305f4d7fafa9a6ad2cef48cbd5d9e7b"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-linux-arm64-gnu.tar.gz"
      sha256 "201e964cfe954b45f82b23a1057a300b52e63ef2fd59f5d70fefc4d649ffe19d"
    end
  end

  def install
    bin.install "dbx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbx --version")
  end
end
