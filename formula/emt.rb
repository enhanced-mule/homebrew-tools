require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-alpha1/enhanced-mule-tools-cli-1.3.0-alpha1-dist.tbz2"
  sha256 "603c54a9f48c2d48b6803621dee646accc6e40c16bad5af1a55f1a4f915abb01"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
  test do
    assert_match "1.3.0-alpha1", shell_output("#{bin}/emt -V", 2)
  end
end
