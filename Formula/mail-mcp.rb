class MailMcp < Formula
  desc "MCP server for AI-powered email access via IMAP and SMTP"
  homepage "https://github.com/honest-magic/mail-mcp"
  url "https://registry.npmjs.org/@honest-magic/mail-mcp/-/mail-mcp-1.2.0.tgz"
  sha256 "59eedbdc5d5c1a90e87aa44d9b487e33972247d27f27b7a275f6962b780d7d2f"
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
