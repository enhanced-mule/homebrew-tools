require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-alpha2/enhanced-mule-tools-cli-1.3.0-alpha2-dist.tbz2"
  sha256 "745f0c54cf6c9e9bb1f3e7f90f0381ebb98b73829bb6e864eacea6140e0fa59f"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
  test do
    assert_match "1.3.0-alpha2", shell_output("#{bin}/emt -V", 2)
  end
end
