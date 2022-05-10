# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.7.2"

  on_macos do
    url "https://dl.stainless.dev/dataland-cli/releases/0.7.2/dataland-cli-0.7.2-x86_64-macos.tar.gz"
    sha256 "2290fc79ebb904626c132de31ae9c9b2fb5f5dcc219e06a415d896c396914d40"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.7.2/dataland-cli-0.7.2-x86_64-linux.tar.gz"
      sha256 "995a49127a99958d741d2c1818b1cc23998a023c1947a30b64953fdff59945c7"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
