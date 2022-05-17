# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.8.1"

  on_macos do
    url "https://dl.dataland.io/dataland-cli/releases/0.8.1/dataland-cli-0.8.1-x86_64-macos.tar.gz"
    sha256 "3b780b196010288bdf3a3b5ba655034730e8f6eb3329c0b1b8c1a0fe0f925f94"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.dataland.io/dataland-cli/releases/0.8.1/dataland-cli-0.8.1-x86_64-linux.tar.gz"
      sha256 "3d90bfa7f2fd9358b0a4c01809afac5b7e35f49a0c371c7817e826402601fe76"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
