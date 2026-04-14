class Siki < Formula
  desc "TUI orchestrator for managing multiple Claude Code worktree sessions"
  homepage "https://github.com/drapon/siki"
  url "https://github.com/drapon/siki/archive/refs/tags/v0.1.22.tar.gz"
  sha256 "f6c8c0e9924817f59f18ad076bd3b8c023cb1aeccc75aa8aaf7a2f7b868c3e58"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "siki", shell_output("#{bin}/siki --help 2>&1", 2)
  end
end
