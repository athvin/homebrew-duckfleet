class Duckfleet < Formula
  desc "Native command-line client for DuckFleet"
  homepage "https://github.com/athvin/duck-fleet"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.2.0/duckfleet-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "307481d9c6f51c4e8e148040302022c5549726d1597603257af308e2dff86540"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.2.0/duckfleet-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3cca2a265f369d7cc9514af048284b8a1fd10fff6a0d950adc95e822d6a667fd"
    end
    on_arm do
      url "https://github.com/athvin/duck-fleet/releases/download/duckfleet-v0.2.0/duckfleet-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ea9552c308fcd9bbdf0b94187101f10592b45569f846b10454cd295d0aa8d6a"
    end
  end

  def install
    bin.install "duckfleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duckfleet version")
  end
end
