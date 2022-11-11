# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.dataland.io/dataland-cli/releases/0.12.1/dataland-cli-0.12.1-x86_64-macos.tar.gz"
      sha256 "d1c77528669f9de20218df6f40dfcf044c39ae9e8d69d1683675125304dfbb82"

      def install
        bin.install "dataland"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.dataland.io/dataland-cli/releases/0.12.1/dataland-cli-0.12.1-aarch64-macos.tar.gz"
      sha256 "9ff0cbfef7015da59da6dc6ef9fa4f0826b27f8739f29672cdfeecfefa3b24f3"

      def install
        bin.install "dataland"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.dataland.io/dataland-cli/releases/0.12.1/dataland-cli-0.12.1-x86_64-linux.tar.gz"
      sha256 "d62027e7939f2f5a359240ae88b21b0626024e7c277d35bef6b045a82b861e55"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
