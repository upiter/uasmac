# UASM
class Uasm < Formula
  desc "UASM - Macro Assembler"
  homepage "https://github.com/upiter/uasmac"
  version "2.50"
  url "https://github.com/upiter/uasmac/releases/download/2.50a/uasm250a.zip"
  sha256 "0e6e05e5dfd3b9b8009701a3fce6119130ce340845f1588a0387770b9cf45ab6"
  # head "https://github.com/Terraspace/UASM.git", branch: "2.50"

  def install
    bin.install "uasm"
  end

  test do
    system "#{bin}/uasm", "-h"
  end
end
