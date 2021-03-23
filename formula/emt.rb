require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta10/enhanced-mule-tools-cli-1.3.0-beta10-dist.tbz2"
  sha256 "b776bd8597e82816e8bfd9ffbc12bbf3e5a8b50e7a9c96282c9ac9b43908f50e"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta10", shell_output("#{bin}/emt -V", 2)
    end
end
