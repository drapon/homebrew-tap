class Siki < Formula
  desc "TUI orchestrator for managing multiple Claude Code worktree sessions"
  homepage "https://github.com/drapon/siki"
  url "https://github.com/drapon/siki/archive/refs/tags/v0.1.12.tar.gz"
  sha256 "27ba369b6144d29d5cbd56269429ece601ab7902596efd3cd24ffed3b9c0af3e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "siki", shell_output("#{bin}/siki --help 2>&1", 2)
  end
end
