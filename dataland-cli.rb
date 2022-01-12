# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.1.0"

  on_macos do
    url "https://dl.stainless.dev/dataland-cli/releases/0.1.0/dataland-cli-0.1.0-x86_64-macos.tar.gz"
    sha256 "091d6bc4d8b6c6db3919e5f48713451fd80b09418ed71f664e068c8e0a6ffff3"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.1.0/dataland-cli-0.1.0-x86_64-linux.tar.gz"
      sha256 "30b1402937fb693d7fe333fd77e1c8c56d3ac3ab4640d16b90e1b445ebf037b0"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
