# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.10.3"

  on_macos do
    url "https://dl.dataland.io/dataland-cli/releases/0.10.3/dataland-cli-0.10.3-x86_64-macos.tar.gz"
    sha256 "d060b02f6afe7079b963700ca678708a249f24adaf3abcf69b8855a9fe82d426"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.dataland.io/dataland-cli/releases/0.10.3/dataland-cli-0.10.3-x86_64-linux.tar.gz"
      sha256 "4140c1ce226227c9d1cf2abb54af78c9a1e16a92df5921d08cfa1491bc385071"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
