class Clock < Formula
  desc "A highly customizable, gorgeous retro terminal clock with premium faces"
  homepage "https://github.com/HainanZhao/clock"
  url "https://github.com/HainanZhao/clock/archive/e5bba8b7bcc0f1bc28f85469a73fd49ee3c8a449.tar.gz"
  sha256 "98b386e11e7fe5c1dce3a7438b6e640e35ea7ca9d445bfa88feee4ac81eccfd7"
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
