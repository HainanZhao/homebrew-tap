class Tictock < Formula
  desc "Polished, configurable terminal clock with 18 distinctive faces"
  homepage "https://github.com/HainanZhao/tictock"
  url "https://github.com/HainanZhao/tictock/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "1fea6491ed81662bbd6b1fc3da9c46afac319cbc2c4565c3c9b1aaba1d02e460"
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
