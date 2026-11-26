class Duckfleet < Formula
  desc "Native command-line client for DuckFleet"
  homepage "https://github.com/athvin/duck-fleet"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.4.0/duckfleet-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "728d79b611ca4c7a431047ff8baa63260b9f87faa5e567ce5be2f0b729034a80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.4.0/duckfleet-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4bed05b640dc80666cd74deef895de134bd384cb852a67f84b0fe33481bfb90"
    end
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.4.0/duckfleet-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d93111328310c7f2c45b6c6968effd0ceb00b2ec6523dc74276fa9452a8cdd3"
    end
  end

  def install
    bin.install "duckfleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duckfleet version")
  end
end
