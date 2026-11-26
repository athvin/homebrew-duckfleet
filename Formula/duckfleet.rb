class Duckfleet < Formula
  desc "Native command-line client for DuckFleet"
  homepage "https://github.com/athvin/duck-fleet"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.1.0/duckfleet-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "941e933d65847bcd9dddd4c2d56ac426f21c3fa0372e24b34d1f511189f9b09d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.1.0/duckfleet-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c04689c54a10c38937988446098d746f061f729ba51422d70349318bb938083"
    end
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.1.0/duckfleet-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9be22ee8cb1359a7deed6c2cc778514cb6cf387373aec7cd1c37edbdac947ad0"
    end
  end

  def install
    bin.install "duckfleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duckfleet version")
  end
end
