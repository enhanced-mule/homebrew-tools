require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta13/enhanced-mule-tools-cli-1.3.0-beta13-dist.tbz2"
  sha256 "f48848d8a62be3f02b5641b0c9357cb8713843dfc4432973adf082a458af2d94"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta13", shell_output("#{bin}/emt -V", 2)
    end
end
