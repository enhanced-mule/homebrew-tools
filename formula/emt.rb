require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-alpha8/enhanced-mule-tools-cli-1.3.0-alpha8-dist.tbz2"
  sha256 "9f2ecf2370d6cade78090b6a29adf17c1474ed80b3ebc64d4922437441477f21"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-alpha8", shell_output("#{bin}/emt -V", 2)
    end
end
