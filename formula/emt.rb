require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-alpha4/enhanced-mule-tools-cli-1.3.0-alpha4-dist.tbz2"
  sha256 "1c147433b4b342fb9f0727a8123111aced181dc6a067612f997ae5488e3ce027"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-alpha4", shell_output("#{bin}/emt -V", 2)
    end
end
