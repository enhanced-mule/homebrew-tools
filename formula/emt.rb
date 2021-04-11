require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta15/enhanced-mule-tools-cli-1.3.0-beta15-dist.tbz2"
  sha256 "b847b7eae6f094926e83917bac60c7f06213172ff69b168445be32121c74d3c2"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta15", shell_output("#{bin}/emt -V", 2)
    end
end
