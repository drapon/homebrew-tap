class Siki < Formula
  desc "TUI orchestrator for managing multiple Claude Code worktree sessions"
  homepage "https://github.com/drapon/siki"
  url "https://github.com/drapon/siki/archive/refs/tags/v0.1.44.tar.gz"
  sha256 "66d71c4184f373310e0e09c6a74f745470b557d69272de38fac848a66789001a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "siki", shell_output("#{bin}/siki --help 2>&1", 2)
  end
end