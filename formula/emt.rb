require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta19/enhanced-mule-tools-cli-1.3.0-beta19-dist.tbz2"
  sha256 "47333605163f18b148046e827b796e72ea371d13e456ca28fb89ea8b8334fb49"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta19", shell_output("#{bin}/emt -V", 2)
    end
end
