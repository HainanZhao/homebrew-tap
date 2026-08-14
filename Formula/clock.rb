class Clock < Formula
  desc "A highly customizable, gorgeous retro terminal clock with premium faces"
  homepage "https://github.com/HainanZhao/clock"
  url "https://github.com/HainanZhao/clock/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "f21e23bb3e419a123a0f1a325d25fa4c52dacce1a48e55d4cbd3185728d01022"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/clock", "--version"
  end
end
