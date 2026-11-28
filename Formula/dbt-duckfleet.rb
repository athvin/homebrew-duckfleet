class DbtDuckfleet < Formula
  desc "dbt-core v2 with DuckFleet as a built-in adapter"
  homepage "https://github.com/athvin/dbt"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/athvin/dbt/releases/download/duckfleet-v0.1.9/dbt-darwin-aarch64.tar.gz"
      sha256 "016cccb2275d08665e9c2b584f822c95928986f790a8141c3e9de2c6c2e250d6"
    end
    on_intel do
      url "https://github.com/athvin/dbt/releases/download/duckfleet-v0.1.9/dbt-darwin-x86_64.tar.gz"
      sha256 "487bfdf4de3414bd95787ad7d872717b1fd904dcd935faf132037fa904581e53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/athvin/dbt/releases/download/duckfleet-v0.1.9/dbt-linux-aarch64.tar.gz"
      sha256 "263356797ff133d4790ea5071b80d93bf035aaa0e5b022adcb704ff657f329f5"
    end
    on_intel do
      url "https://github.com/athvin/dbt/releases/download/duckfleet-v0.1.9/dbt-linux-x86_64.tar.gz"
      sha256 "08430d7fff273589d3972973cd81a8fad32238d9c8e2f83821b8d751b8fb9520"
    end
  end

  # Installs a `dbt` command: unlink any other dbt (pip, pipx) on PATH first.
  def install
    bin.install "dbt"
  end

  test do
    assert_match "dbt", shell_output("#{bin}/dbt --version")
  end
end
