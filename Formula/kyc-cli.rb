# typed: false
# frozen_string_literal: true

class KycCli < Formula
  desc "Terminal-only crypto swap (the kyc.rip aggregator as a TUI)"
  homepage "https://swap.kyc.rip"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kyc-rip/cli/releases/download/v0.1.2/kyc-cli_0.1.2_darwin_arm64.tar.gz"
      sha256 "06aa8d1aebc099ef0000a625be2505208892cbae08a9880e662fbe460a3e1685"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kyc-rip/cli/releases/download/v0.1.2/kyc-cli_0.1.2_darwin_amd64.tar.gz"
      sha256 "36dfdc68dd7e3a13cbce9c8fa195ab835522dd9230923cb4f99396a21773bb4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kyc-rip/cli/releases/download/v0.1.2/kyc-cli_0.1.2_linux_arm64.tar.gz"
      sha256 "46ffe08ac3e9694d5410fcca026a1a693a32ecd83566d2e004a1f72e22440a53"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kyc-rip/cli/releases/download/v0.1.2/kyc-cli_0.1.2_linux_amd64.tar.gz"
      sha256 "bf1a8bfd82f17a61c868d1901e2efbe0b5eb3ca8fbf6929b86fb1ce8dda9d2b4"
    end
  end

  def install
    bin.install "kyc-cli"
  end

  test do
    system "#{bin}/kyc-cli", "--version"
  end
end
