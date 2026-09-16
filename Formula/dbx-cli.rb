class DbxCli < Formula
  desc "Command-line interface for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  version "0.4.89"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-darwin-x64.tar.gz"
      sha256 "0bdee9a0693c5a8fac0ec0fab8c71ef2bbb6eda03e2a723bd64a979bb4461773"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-darwin-arm64.tar.gz"
      sha256 "ca2901dc327cfc67220cf2af4badfd04ea47d79f4d9205be2a711277989399b3"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-linux-x64-gnu.tar.gz"
      sha256 "9f712296dc1ed721f3d3e1b2089910525a9fa680333826906ac029216b5c11e3"
    else
      url "https://github.com/t8y2/dbx/releases/download/packages-v#{version}/dbx-cli-linux-arm64-gnu.tar.gz"
      sha256 "0bbeb82b78201b8f268405f0809c52b5797d071105bf73c4b2a4d67290de777f"
    end
  end

  def install
    bin.install "dbx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbx --version")
  end
end
