# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.11.1"

  on_macos do
    url "https://dl.dataland.io/dataland-cli/releases/0.11.1/dataland-cli-0.11.1-x86_64-macos.tar.gz"
    sha256 "1acbfec623114a142a109ca298b8a4f983dbe678c93aa8a75ad105dacd46f67a"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.dataland.io/dataland-cli/releases/0.11.1/dataland-cli-0.11.1-x86_64-linux.tar.gz"
      sha256 "92baa7018a66411e09bcc79c57f2593df74a96062caaf081e52302da1785cecd"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
