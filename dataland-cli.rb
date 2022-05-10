# typed: false
# frozen_string_literal: true

class DatalandCli < Formula
  desc "Dataland command-line interface"
  homepage "https://dataland.io"
  version "0.8.0"

  on_macos do
    url "https://dl.stainless.dev/dataland-cli/releases/0.8.0/dataland-cli-0.8.0-x86_64-macos.tar.gz"
    sha256 "6a1623beb7273a616a2a3a667779232c24936248736c91c84fee401e8e6a617f"

    def install
      bin.install "dataland"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.stainless.dev/dataland-cli/releases/0.8.0/dataland-cli-0.8.0-x86_64-linux.tar.gz"
      sha256 "be3fdac93066e6b915cc0b966c77eaa43bec263f060e5c362c686ebe2806f99a"

      def install
        bin.install "dataland"
      end
    end
  end

  test do
    system "#{bin}/dataland --version"
  end
end
