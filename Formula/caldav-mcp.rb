class CaldavMcp < Formula
  desc "MCP server for AI-powered calendar access via CalDAV"
  homepage "https://github.com/honest-magic/caldav-mcp"
  url "https://registry.npmjs.org/@honest-magic/caldav-mcp/-/caldav-mcp-0.3.1.tgz"
  sha256 "b7a7e9be7d47a548f52fdd609d9dac6116c9ffa666caa80f9e4cf0ad63f7d0c3"
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
