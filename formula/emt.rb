require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta9/enhanced-mule-tools-cli-1.3.0-beta9-dist.tbz2"
  sha256 "fb73a7a6b04d8afff9b1531ea3625b9a383d32427154f42f5a04e2528c0a46dd"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta9", shell_output("#{bin}/emt -V", 2)
    end
end
