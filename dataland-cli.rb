# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.4.0"

  on_macos do
    url "https://dl.stainless.dev/dataland-cli/releases/0.4.0/dataland-cli-0.4.0-x86_64-macos.tar.gz"
    sha256 "3a56c0f178f69d701f9d23df1c47fd9db4f929589ec650df31e4c14ff0220aa7"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.4.0/dataland-cli-0.4.0-x86_64-linux.tar.gz"
      sha256 "c7185ec4b0cb33c68b99c33b7e5dc7ba459763623e8692ab88a4fd4f3c7adca7"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
