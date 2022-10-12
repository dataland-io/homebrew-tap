# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.11.0"

  on_macos do
    url "https://dl.dataland.io/dataland-cli/releases/0.11.0/dataland-cli-0.11.0-x86_64-macos.tar.gz"
    sha256 "04660afbb3304ad83dd8b274faada57e31b08f32c8f68283b2727fb13c0faee6"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.dataland.io/dataland-cli/releases/0.11.0/dataland-cli-0.11.0-x86_64-linux.tar.gz"
      sha256 "8da386f076bdbb6ba0682e53d9ce1cdc9ea602696cc523f00b34817aad18612a"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
