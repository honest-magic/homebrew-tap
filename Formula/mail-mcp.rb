class MailMcp < Formula
  desc "MCP server for AI-powered email access via IMAP and SMTP"
  homepage "https://github.com/honest-magic/mail-mcp"
  url "https://registry.npmjs.org/@honest-magic/mail-mcp/-/mail-mcp-1.3.0.tgz"
  sha256 "eeca1cf6f663297ffc7ac03d6c91845a5241dc7d8f628c009d9f8764e22754b6"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  def caveats
    <<~EOS
      To get started, add your first email account:
        mail-mcp accounts add
    EOS
  end

  test do
    assert_predicate bin/"mail-mcp", :executable?
  end
end
