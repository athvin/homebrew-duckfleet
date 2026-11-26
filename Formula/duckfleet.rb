class Duckfleet < Formula
  desc "Native command-line client for DuckFleet"
  homepage "https://github.com/athvin/duck-fleet"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.3.0/duckfleet-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c0e49ee3cd90ed0e37ebaa9cbda37317ae32bcc4b12921f5cda3a09cdeb175e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.3.0/duckfleet-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dae827a699077e1b905691676939860e0be6ad719d48c1be61223b7a10b2e03a"
    end
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.3.0/duckfleet-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa51c38c59fff66299b6db2f5b09ac24587e7d5aced6423bb729ca07c49266c5"
    end
  end

  def install
    bin.install "duckfleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duckfleet version")
  end
end
