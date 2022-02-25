# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.5.0"

  on_macos do
    url "https://dl.stainless.dev/dataland-cli/releases/0.5.0/dataland-cli-0.5.0-x86_64-macos.tar.gz"
    sha256 "49c4060a55a7748fbaf45b1d42ae1bd44da6192986eb3b1d223ca838dca9869c"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.5.0/dataland-cli-0.5.0-x86_64-linux.tar.gz"
      sha256 "c74d68e7b1871364cd6d4fdb9fa0bd466ac0186675fedcd97e74e58b99e3a604"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
