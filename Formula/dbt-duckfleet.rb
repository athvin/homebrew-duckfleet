class DbtDuckfleet < Formula
  desc "dbt-core v2 with DuckFleet as a built-in adapter"
  homepage "https://github.com/athvin/dbt"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/athvin/dbt/releases/download/duckfleet-v0.1.7/dbt-darwin-aarch64.tar.gz"
      sha256 "3bd039d8114963e1e1a90f91ee77e1b86a17d60db65ec48a91c92ad5d6653f0a"
    end
    on_intel do
      url "https://github.com/athvin/dbt/releases/download/duckfleet-v0.1.7/dbt-darwin-x86_64.tar.gz"
      sha256 "492faa31433b2a4fb6ce2c683254c28f62a5a4f57c200d7f26b1cfb0c089886c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/athvin/dbt/releases/download/duckfleet-v0.1.7/dbt-linux-aarch64.tar.gz"
      sha256 "f863f3316ce5c16611351cbc677d509288e627122b923041557b799cb369b5f7"
    end
    on_intel do
      url "https://github.com/athvin/dbt/releases/download/duckfleet-v0.1.7/dbt-linux-x86_64.tar.gz"
      sha256 "6513f877e5aeb9d867054fd199ba89d996a79cd20910db230033a073c11fa514"
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
