require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta5/enhanced-mule-tools-cli-1.3.0-beta5-dist.tbz2"
  sha256 "5bde56d47f59884e362dedcb5d6550770296225d69790bd4cfd26a29be9c8bf4"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta5", shell_output("#{bin}/emt -V", 2)
    end
end
