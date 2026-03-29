class CaldavMcp < Formula
  desc "MCP server for AI-powered calendar access via CalDAV"
  homepage "https://github.com/honest-magic/caldav-mcp"
  url "https://registry.npmjs.org/@honest-magic/caldav-mcp/-/caldav-mcp-0.1.0.tgz"
  sha256 "9d442fab757c2c43864f61408c57ad234cfab26fb4d6badb735650e2e3335d9a"
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
