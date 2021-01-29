require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-alpha9/enhanced-mule-tools-cli-1.3.0-alpha9-dist.tbz2"
  sha256 "b697bfaeba4e24ff23b90ed5bb1c3fbf09a264c6881e956ebe11581257314071"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-alpha9", shell_output("#{bin}/emt -V", 2)
    end
end
