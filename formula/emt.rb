require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta18/enhanced-mule-tools-cli-1.3.0-beta18-dist.tbz2"
  sha256 "767162d112c25a2dc9c23c989829cad3f14897efb24e6b67db49c6f59f56b83c"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta18", shell_output("#{bin}/emt -V", 2)
    end
end
