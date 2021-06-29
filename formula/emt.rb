require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta20/enhanced-mule-tools-cli-1.3.0-beta20-dist.tbz2"
  sha256 "3a0fb048eaad2ff73f00d2db23e2a256d543ab04d6ff06fe1eed7f2e1a527fd5"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta20", shell_output("#{bin}/emt -V", 2)
    end
end
