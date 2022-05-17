# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.9.0"

  on_macos do
    url "https://dl.dataland.io/dataland-cli/releases/0.9.0/dataland-cli-0.9.0-x86_64-macos.tar.gz"
    sha256 "7745a574594f4870ef90dca17c06461deb47a625a70fb8a5cd2314e9122403eb"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.dataland.io/dataland-cli/releases/0.9.0/dataland-cli-0.9.0-x86_64-linux.tar.gz"
      sha256 "3a89bfcb245b6ef175b8de7ed3041481d1b9b8b11bbfd800f3ffdff3391b127e"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
