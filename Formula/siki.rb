class Siki < Formula
  desc "TUI orchestrator for managing multiple Claude Code worktree sessions"
  homepage "https://github.com/drapon/siki"
  url "https://github.com/drapon/siki/archive/refs/tags/v0.1.15.tar.gz"
  sha256 "f5769f63df42ba2655e77e181ec9658b6e1a970b093489dd346c6e8aa15585cb"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "siki", shell_output("#{bin}/siki --help 2>&1", 2)
  end
end
