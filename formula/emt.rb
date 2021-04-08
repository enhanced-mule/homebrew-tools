require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta14/enhanced-mule-tools-cli-1.3.0-beta14-dist.tbz2"
  sha256 "31b16db27444d1817fdc62fa2cb7bdb00ab9846577ff46b2af6366373ab40538"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta14", shell_output("#{bin}/emt -V", 2)
    end
end
