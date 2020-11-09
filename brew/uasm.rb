# UASM
class Uasm < Formula
  desc "UASM - Macro Assembler"
  homepage "https://github.com/upiter/uasmac"
  version "2.50"
  url "https://github.com/upiter/uasmac/releases/download/2.50a/uasm250a.zip"
  sha256 "3febb7f97bbe60c1a18d8114853968bdad2c3c284d772542a507a2b85d076390"
  # head "https://github.com/Terraspace/UASM.git", branch: "2.50"

  def install
    bin.install "uasm"
  end

  test do
    system "#{bin}/uasm", "-h"
  end
end
