# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.6.0"

  on_macos do
    url "https://dl.stainless.dev/dataland-cli/releases/0.6.0/dataland-cli-0.6.0-x86_64-macos.tar.gz"
    sha256 "0c4ec268c80abc3f32f89862d0a51406dd6e750bde5fea23bf5bbc3b081a2f77"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.6.0/dataland-cli-0.6.0-x86_64-linux.tar.gz"
      sha256 "d365ce5ba68f202b4492f3d7f161a65bb569cb5a4974c5d4b27e22249d22d541"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
