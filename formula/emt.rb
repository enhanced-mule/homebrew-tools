require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-alpha5/enhanced-mule-tools-cli-1.3.0-alpha5-dist.tbz2"
  sha256 "487b0ec2012f97bd770c03ce6f28e124a086c2c9626e9af7c89c506cd1f68b53"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-alpha5", shell_output("#{bin}/emt -V", 2)
    end
end
