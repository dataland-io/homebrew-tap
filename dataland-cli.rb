# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.9.1"

  on_macos do
    url "https://dl.dataland.io/dataland-cli/releases/0.9.1/dataland-cli-0.9.1-x86_64-macos.tar.gz"
    sha256 "e5fb874db936b9453f6e60e6d4e83f15fe22998202a7a0784c1528daf598014c"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.dataland.io/dataland-cli/releases/0.9.1/dataland-cli-0.9.1-x86_64-linux.tar.gz"
      sha256 "b7869aa58b74991df605472f6f63fe23b6078f81a50af67f42199accf797f253"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
