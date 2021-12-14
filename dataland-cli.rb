# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.1.0-alpha.1"

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.1.0-alpha.1/dataland-cli-0.1.0-alpha.1-x86_64-macos.tar.gz"
      sha256 "e91858a6e6e8a3312929858d3707ac8e9b4b94d9f1e3f74dbad16d5e16c477f4"

      def install
        bin.install "dataland"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.1.0-alpha.1/dataland-cli-0.1.0-alpha.1-x86_64-macos.tar.gz"
      sha256 "e91858a6e6e8a3312929858d3707ac8e9b4b94d9f1e3f74dbad16d5e16c477f4"

      def install
        bin.install "dataland"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.1.0-alpha.1/dataland-cli-0.1.0-alpha.1-x86_64-linux.tar.gz"
      sha256 "575469e251202481027b47e36a7fa8c9c4dea405c639df0a5d7cbaba97f33f76"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
