require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta1/enhanced-mule-tools-cli-1.3.0-beta1-dist.tbz2"
  sha256 "5a7219b6d722fcac75b9630eaf8e713daf15261b8ef52114e139e648a2160fdf"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta1", shell_output("#{bin}/emt -V", 2)
    end
end
