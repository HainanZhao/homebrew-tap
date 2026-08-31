class Tictock < Formula
  desc "Polished, configurable terminal clock with 18 distinctive faces"
  homepage "https://github.com/HainanZhao/tictock"
  url "https://github.com/HainanZhao/tictock/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "16eb58c230e53786dbd18d8c98b363b4e5a893a5bd7291fbd65d099f7e82c046"
  license "MIT"

  head "https://github.com/HainanZhao/tictock.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tictock --version")
  end
end
