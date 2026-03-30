class CaldavMcp < Formula
  desc "MCP server for AI-powered calendar access via CalDAV"
  homepage "https://github.com/honest-magic/caldav-mcp"
  url "https://registry.npmjs.org/@honest-magic/caldav-mcp/-/caldav-mcp-0.3.0.tgz"
  sha256 "be2823344c4e747c3476eca66635a9f28430692bb5612fb4baa234dbf6a358db"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  def caveats
    <<~EOS
      To get started, add your first CalDAV account:
        caldav-mcp accounts add

      To register with Claude Desktop:
        caldav-mcp --install-claude
    EOS
  end

  test do
    assert_predicate bin/"caldav-mcp", :executable?
  end
end
