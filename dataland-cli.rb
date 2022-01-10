# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.1.0"

  on_macos do
    url "https://dl.stainless.dev/dataland-cli/releases/0.1.0/dataland-cli-0.1.0-x86_64-macos.tar.gz"
    sha256 "19584e56316627bf01f8ca6196ec76a456816a4a1ffc3d4a9a1bf543b9a4f3b1"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.1.0/dataland-cli-0.1.0-x86_64-linux.tar.gz"
      sha256 "f91249b4dc5762ff999a4810a0b20477e16474eaa136dccdfc20bad63cc62e68"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
