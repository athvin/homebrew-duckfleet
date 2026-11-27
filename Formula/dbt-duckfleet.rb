class DbtDuckfleet < Formula
  desc "dbt-core v2 with DuckFleet as a built-in adapter"
  homepage "https://github.com/athvin/dbt"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/athvin/dbt/releases/download/duckfleet-v0.1.8/dbt-darwin-aarch64.tar.gz"
      sha256 "078f85aa215e36f5dd092838fe00dfe883f13708448873471ce28119f9917f4d"
    end
    on_intel do
      url "https://github.com/athvin/dbt/releases/download/duckfleet-v0.1.8/dbt-darwin-x86_64.tar.gz"
      sha256 "4a55b0ade762f0e1bf2ce084d61d63853ffe070f66588e5a01152d7df66236b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/athvin/dbt/releases/download/duckfleet-v0.1.8/dbt-linux-aarch64.tar.gz"
      sha256 "01347af1bc5472ba8d81bf680721eca8075a8765c58bc6def7990366c3b2a89b"
    end
    on_intel do
      url "https://github.com/athvin/dbt/releases/download/duckfleet-v0.1.8/dbt-linux-x86_64.tar.gz"
      sha256 "16b7bef607f640e6558bef35e919907ff95c7aca64c6ae6d4eec40d6fe1859af"
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
