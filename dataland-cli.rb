# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.3.0"

  on_macos do
    url "https://dl.stainless.dev/dataland-cli/releases/0.3.0/dataland-cli-0.3.0-x86_64-macos.tar.gz"
    sha256 "ecbf895793177ef5fc1d7aabb718e6c8ca743ceedaceb65cfbe3b6cbe834d758"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.3.0/dataland-cli-0.3.0-x86_64-linux.tar.gz"
      sha256 "7ad9b3893184e9eb35f442443eee12c354c454f6abec4ca4f281f39e5b4cde15"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
