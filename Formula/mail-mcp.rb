class MailMcp < Formula
  desc "MCP server for AI-powered email access via IMAP and SMTP"
  homepage "https://github.com/honest-magic/mail-mcp"
  url "https://registry.npmjs.org/@honest-magic/mail-mcp/-/mail-mcp-1.4.0.tgz"
  sha256 "2d1a6607daaa86d29530bb8537e787cf0ff749c34a8e71b798bd79f769a063ea"
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
