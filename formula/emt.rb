require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta8/enhanced-mule-tools-cli-1.3.0-beta8-dist.tbz2"
  sha256 "675f049b6882dff58dad69cf1b7c09faac241ffb184b215a5b02764006bc4bbd"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta8", shell_output("#{bin}/emt -V", 2)
    end
end
