require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta7/enhanced-mule-tools-cli-1.3.0-beta7-dist.tbz2"
  sha256 "691f038fd9f92997e81a8b5eac4b21ff9c138dec025d009d1c247d33a1c4fe7e"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta7", shell_output("#{bin}/emt -V", 2)
    end
end
