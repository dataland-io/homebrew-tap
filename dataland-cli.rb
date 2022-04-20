# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.7.1"

  on_macos do
    url "https://dl.stainless.dev/dataland-cli/releases/0.7.1/dataland-cli-0.7.1-x86_64-macos.tar.gz"
    sha256 "7afbc042b9c07b18205fc2e7ee722ef72c41d660dd0b3d1a91ac6ddc0f880f2b"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.7.1/dataland-cli-0.7.1-x86_64-linux.tar.gz"
      sha256 "93a863f2e6d275993f9a40b65dac077391f02194bcde9992b1d96f2ef7330154"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
