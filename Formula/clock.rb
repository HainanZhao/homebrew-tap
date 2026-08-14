class Clock < Formula
  desc "A highly customizable, gorgeous retro terminal clock with premium faces"
  homepage "https://github.com/HainanZhao/clock"
  url "https://github.com/HainanZhao/clock/archive/af60f5782067351c08a379963cc034f8602ce162.tar.gz"
  sha256 "cf80f1904293c3f492c4351c288ad2f6e7b39c0810bafc883156d6a0e0a16b30"
  license "MIT"

  head "https://github.com/HainanZhao/clock.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/clock", "--version"
  end
end
