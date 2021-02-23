require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta2/enhanced-mule-tools-cli-1.3.0-beta2-dist.tbz2"
  sha256 "469c6e04df89c5c782761521c0b97817aed4417f38bc75880b8ce83dfda29cef"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta2", shell_output("#{bin}/emt -V", 2)
    end
end
