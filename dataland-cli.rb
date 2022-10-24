# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.dataland.io/dataland-cli/releases/0.12.0/dataland-cli-0.12.0-x86_64-macos.tar.gz"
      sha256 "0e6782eaf9ea4e3425781b7c030bb0b6f85050631c72d16a27524008b1cf36e9"

      def install
        bin.install "dataland"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.dataland.io/dataland-cli/releases/0.12.0/dataland-cli-0.12.0-aarch64-macos.tar.gz"
      sha256 "668a518e681c51a9aa927c515fe41e1667e5b23d896738d6c7ede69ef66871b5"

      def install
        bin.install "dataland"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.dataland.io/dataland-cli/releases/0.12.0/dataland-cli-0.12.0-x86_64-linux.tar.gz"
      sha256 "776e92a8be2043b5866e210d67b7955fbb3951bc6fff8e08e8fb51f5092965d6"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
