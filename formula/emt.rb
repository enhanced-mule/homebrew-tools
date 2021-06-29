require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta21/enhanced-mule-tools-cli-1.3.0-beta21-dist.tbz2"
  sha256 "a69369e6fd809a5c1e123ba84351560921d163dec1956b505ce04cf163bb5dc4"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta21", shell_output("#{bin}/emt -V", 2)
    end
end
