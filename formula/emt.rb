require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta20/enhanced-mule-tools-cli-1.3.0-beta20-dist.tbz2"
  sha256 "af534c3433ca4fb7934a7a85b441660834f3674815460bece8178fe6485bd22b"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta20", shell_output("#{bin}/emt -V", 2)
    end
end
