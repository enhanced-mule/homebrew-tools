require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/2.0.0-alpha1/enhanced-mule-tools-cli-2.0.0-alpha1-dist.tbz2"
  sha256 "837be0f14c9b8ae85fee2ed78ca71b5a83a113db635da5181382b50c721c9247"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "2.0.0-alpha1", shell_output("#{bin}/emt -V", 2)
    end
end
