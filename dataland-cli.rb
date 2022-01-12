# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.2.0"

  on_macos do
    url "https://dl.stainless.dev/dataland-cli/releases/0.2.0/dataland-cli-0.2.0-x86_64-macos.tar.gz"
    sha256 "a79adeda18fb6f316601d87aca8428089e8e7c3e3ae76559a75bdaff5a221166"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.2.0/dataland-cli-0.2.0-x86_64-linux.tar.gz"
      sha256 "cc28124a2e94e67dd905058a95b661180960497a43027c720945e7f060e6bdd6"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
