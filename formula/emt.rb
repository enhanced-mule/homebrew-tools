require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta4/enhanced-mule-tools-cli-1.3.0-beta4-dist.tbz2"
  sha256 "4d839e6d9906576a301ece706ae55dc0a129e7cbf5ee032bdbc77d30c00436e4"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta4", shell_output("#{bin}/emt -V", 2)
    end
end
