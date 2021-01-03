require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.2.7-beta3/enhanced-mule-tools-cli-1.2.7-beta3-dist.tbz2"
  sha256 "34a09e2ef963d140d32bc6742cb777ffe10bce5b194156abf8781d794c153e41"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    bin.install "bin/emt"
  end

end
