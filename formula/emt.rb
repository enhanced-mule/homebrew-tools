require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta6/enhanced-mule-tools-cli-1.3.0-beta6-dist.tbz2"
  sha256 "095c71f8244cbf0058cdee32530741e49dad2b73f0a9a20a060806917485ce77"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta6", shell_output("#{bin}/emt -V", 2)
    end
end
