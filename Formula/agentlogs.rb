class Agentlogs < Formula
  desc "Local-first CLI for analyzing coding-agent session logs"
  homepage "https://agentlogs.promptingco.com"
  version "0.1.3"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.agentlogs.promptingco.com/0.1.3/agentlogs_0.1.3_darwin_amd64.tar.gz"
      sha256 "c0dfdfe843e9096a514da8449a0aa8426f4d414524e05e5314c1cec6b8a165a1"
    end
    if Hardware::CPU.arm?
      url "https://dl.agentlogs.promptingco.com/0.1.3/agentlogs_0.1.3_darwin_arm64.tar.gz"
      sha256 "2323409bb7268ddaf4f5f762a6762db84b1e00930f24396c7930a8831ceab7ed"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.agentlogs.promptingco.com/0.1.3/agentlogs_0.1.3_linux_amd64.tar.gz"
      sha256 "8792dfa0cda05d4a6cadfa47d84f90ceef169c69ac38a89ae1acfdc175f50a65"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.agentlogs.promptingco.com/0.1.3/agentlogs_0.1.3_linux_arm64.tar.gz"
      sha256 "97fb59935e690d1d0e8b837d6db7548d38a5733acaeb285cc9037b3b76f0e791"
    end
  end

  def install
    bin.install "agentlogs"
  end

  test do
    system "#{bin}/agentlogs", "version"
  end
end
