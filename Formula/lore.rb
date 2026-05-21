# typed: false
# frozen_string_literal: true

class Lore < Formula
  desc "Terminal-first AI chat for daily LLM work"
  homepage "https://github.com/jrniemiec/lore"
  version "0.9.6"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/jrniemiec/lore/releases/download/v0.9.6/lore_0.9.6_darwin_amd64.tar.gz"
    sha256 "415634a4c5f66f8ece3fa14b9e9d7e4485ecd318a035c9a96aceb2cb0e1a4664"

    define_method(:install) do
      bin.install "lore"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/jrniemiec/lore/releases/download/v0.9.6/lore_0.9.6_darwin_arm64.tar.gz"
    sha256 "91b598f62f60f0c5e7f903f844daf661720d9a8461b94eafa9cb50c42ab1ddac"

    define_method(:install) do
      bin.install "lore"
    end
  end

  test do
    system "#{bin}/lore --nw --status"
  end
end
