class Duckfleet < Formula
  desc "Native command-line client for DuckFleet"
  homepage "https://github.com/athvin/duck-fleet"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.4.0/duckfleet-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "0453f160f8052602ea2189dbab29ea4bdaf7e0f0d8ec24bb970f18cab18837e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.4.0/duckfleet-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21611e6408833796e6b0539bc6582700e80257686b689aec11c0178641b7833d"
    end
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.4.0/duckfleet-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c46a60f9a7d212724ba977b85aeab97ddd0229373fd9cf82bfb9fdee79f0669"
    end
  end

  def install
    bin.install "duckfleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duckfleet version")
  end
end
