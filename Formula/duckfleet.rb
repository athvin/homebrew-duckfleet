class Duckfleet < Formula
  desc "Native command-line client for DuckFleet"
  homepage "https://github.com/athvin/duck-fleet"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.5.0/duckfleet-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "e988f91c63537c34895455e19aee007ed3511ae96d27b479fad6e5e7cf1e1b08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.5.0/duckfleet-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d4d377a485ee29d0773dfbf8c1efd8d3c784c7a174ceae2dd6228e1766bf307"
    end
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.5.0/duckfleet-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "498edc35ba97cd69fceb6fc4b9911a7c573768725a130ea946cf26fd864a9147"
    end
  end

  def install
    bin.install "duckfleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duckfleet version")
  end
end
