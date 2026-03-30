class CaldavMcp < Formula
  desc "MCP server for AI-powered calendar access via CalDAV"
  homepage "https://github.com/honest-magic/caldav-mcp"
  url "https://registry.npmjs.org/@honest-magic/caldav-mcp/-/caldav-mcp-0.2.1.tgz"
  sha256 "6dfca56bfa2a423678e4643b9cbebbb4ac260e11fea618cbe431b78a6ece2ad9"
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
