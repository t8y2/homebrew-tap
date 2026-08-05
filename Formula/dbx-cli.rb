class DbxCli < Formula
  desc "Command-line interface for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  url "https://registry.npmjs.org/@dbx-app/cli/-/cli-0.4.55.tgz"
  sha256 "f7fcaed0a1f193588d0da2a02c38cf637bb643286990779615cc117ec2feed58"
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
