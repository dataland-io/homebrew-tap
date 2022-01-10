# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.1.0"

  on_macos do
    url "https://dl.stainless.dev/dataland-cli/releases/0.1.0/dataland-cli-0.1.0-x86_64-macos.tar.gz"
    sha256 "4089fe56186edebcd626dd54780ad4c3b66beb9b0b3f5637257eb5237b4d7e31"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.1.0/dataland-cli-0.1.0-x86_64-linux.tar.gz"
      sha256 "a05030c021276903744b7a56eda85214fee1e76786160eb8832452ee5be3b7af"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
