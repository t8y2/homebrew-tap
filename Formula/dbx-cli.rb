class DbxCli < Formula
  desc "Command-line interface for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  url "https://registry.npmjs.org/@dbx-app/cli/-/cli-0.4.77.tgz"
  sha256 "2eeea2cfa5950e3d67cc6fa9ff61372575e125675fe23283867f801200dc91e1"
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
