require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-beta17/enhanced-mule-tools-cli-1.3.0-beta17-dist.tbz2"
  sha256 "73bb6db6384b429b6c38c125e0594f9061f97386c2f0c3a13ec9a6c0d842900b"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.0-beta17", shell_output("#{bin}/emt -V", 2)
    end
end
