require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta11/enhanced-mule-tools-cli-1.3.0-beta11-dist.tbz2"
  sha256 "29f88412c2a3df11a56a64c5182807c662caae0bec2a36fa03c3a78fd7b25940"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta11", shell_output("#{bin}/emt -V", 2)
    end
end
