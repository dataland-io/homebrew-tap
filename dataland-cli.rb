# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.10.6"

  on_macos do
    url "https://dl.dataland.io/dataland-cli/releases/0.10.6/dataland-cli-0.10.6-x86_64-macos.tar.gz"
    sha256 "a1f73fb5adc0115d1102057ea9a84edaea0f4896bdde77d276394bd1e8daa015"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.dataland.io/dataland-cli/releases/0.10.6/dataland-cli-0.10.6-x86_64-linux.tar.gz"
      sha256 "9c51a8ffb9f30e91e586f94bc3f1aa76a863e4c670238a49470d4086a7620a66"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
