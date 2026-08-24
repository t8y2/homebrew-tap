class DbxCli < Formula
  desc "Command-line interface for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  url "https://registry.npmjs.org/@dbx-app/cli/-/cli-0.4.71.tgz"
  sha256 "da213e808fd5993380659e60ebf8716cde5d7b37b6c5768d2f7c5b29fb6aae7c"
  license "Apache-2.0"

    depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")

  end

  test do
    assert_path_exists bin/"dbx"
    system bin/"dbx", "doctor"
  end
end
