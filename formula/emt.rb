require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta16/enhanced-mule-tools-cli-1.3.0-beta16-dist.tbz2"
  sha256 "1c79ac4665aa62039db423b3232c11522472ce08447ae49fb176e911aa19a9d4"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta16", shell_output("#{bin}/emt -V", 2)
    end
end
