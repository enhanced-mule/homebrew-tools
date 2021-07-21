require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta22/enhanced-mule-tools-cli-1.3.0-beta22-dist.tbz2"
  sha256 "c69d769206a8769760486aecc20ed5e97fb68fb725c9a33fcb5ff852f8a183b9"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta22", shell_output("#{bin}/emt -V", 2)
    end
end
