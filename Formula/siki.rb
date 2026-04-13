class Siki < Formula
  desc "TUI orchestrator for managing multiple Claude Code worktree sessions"
  homepage "https://github.com/drapon/siki"
  url "https://github.com/drapon/siki/archive/refs/tags/v0.1.20.tar.gz"
  sha256 "5ac735a3cfee58f04c7b43b46c3191be13a8523685be62d065df89a16e04b70d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "siki", shell_output("#{bin}/siki --help 2>&1", 2)
  end
end
