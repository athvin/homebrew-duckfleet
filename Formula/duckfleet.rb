class Duckfleet < Formula
  desc "Native command-line client for DuckFleet"
  homepage "https://github.com/athvin/duck-fleet"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.5.0/duckfleet-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "a3222c58603dfe6e3bf6139938caf8390bfe11ae71d94b7dc164c151b902b9d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.5.0/duckfleet-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f79d84d53056cc13c5651a23609ca66c9bd52e34262e59f07f9c8367c8e1a3c"
    end
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.5.0/duckfleet-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "520807f185534b869ec9dad7de195553e92ccaff6a3d36c7f4cc00163143b87b"
    end
  end

  def install
    bin.install "duckfleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duckfleet version")
  end
end
