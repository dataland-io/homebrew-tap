# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.1.0"

  on_macos do
    url "https://dl.stainless.dev/dataland-cli/releases/0.1.0/dataland-cli-0.1.0-x86_64-macos.tar.gz"
    sha256 "a34f07797c890b3556e58ef55a888e9b8fe9c07db29d83d996cf6db6ddd08fd5"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.1.0/dataland-cli-0.1.0-x86_64-linux.tar.gz"
      sha256 "1442190a8d4a349a987032ae4ea6a44e4f12c626625b40b9e4dcd199daaafd61"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
