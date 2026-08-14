class Clock < Formula
  desc "A highly customizable, gorgeous retro terminal clock with premium faces"
  homepage "https://github.com/HainanZhao/clock"
  url "https://github.com/HainanZhao/clock/archive/6cfb3566e3672f6cf2f0d04063cbff5cab1bf32a.tar.gz"
  sha256 "2f276db1b07e4d0d40a577cd626b16ecf03c910121d0ceea5a21b3d9d587ea30"
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
