# UASM
class Uasm < Formula
  desc "UASM - Macro Assembler"
  homepage "https://github.com/upiter/uasmac"
  version "2.47"
  url "https://github.com/upiter/uasmac/releases/download/2.47/uasmac247.zip"
  sha256 "b505697ebed1edd9b09c39ebeb4bc649b653e98cfc1460be6ab5ebed42b2cba8"

  def install
    bin.install "uasm"
  end

  test do
    system "#{bin}/uasm", "-h"
  end
end
