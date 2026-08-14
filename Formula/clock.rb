class Clock < Formula
  desc "A highly customizable, gorgeous retro terminal clock with premium faces"
  homepage "https://github.com/HainanZhao/clock"
  url "https://github.com/HainanZhao/clock/archive/4e0f78710de79d2ed7b1e73d1ff733241ccd4e25.tar.gz"
  sha256 "d94f48f18069f319467ef147b1816ed6f54631661b21f70610898523aa6016a9"
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
