require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta3/enhanced-mule-tools-cli-1.3.0-beta3-dist.tbz2"
  sha256 "3ad45e0847a59d00194da2ed9f970cda4efed1cab2e8b960586794293565d352"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta3", shell_output("#{bin}/emt -V", 2)
    end
end
