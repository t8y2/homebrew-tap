class DbxCli < Formula
  desc "Command-line interface for DBX database connections, schema, and safe queries"
  homepage "https://github.com/t8y2/dbx"
  url "https://registry.npmjs.org/@dbx-app/cli/-/cli-0.4.66.tgz"
  sha256 "ab71d4c17a39f2500128740e13be06c40fda7d449b6ac0981c0fdeaf863bf2ff"
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
