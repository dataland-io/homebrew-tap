# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.5.1"

  on_macos do
    url "https://dl.stainless.dev/dataland-cli/releases/0.5.1/dataland-cli-0.5.1-x86_64-macos.tar.gz"
    sha256 "483bd8e7a1b431321b2bc326bd7bb766859ba6009144069adc3bced7134e58e5"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.5.1/dataland-cli-0.5.1-x86_64-linux.tar.gz"
      sha256 "7fff3fa0df7ba9a4b8382899ce4262e666230d107c487e100aaf5652237d6540"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
