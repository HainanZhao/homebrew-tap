class Clock < Formula
  desc "A highly customizable, gorgeous retro terminal clock with premium faces"
  homepage "https://github.com/HainanZhao/clock"
  url "https://github.com/HainanZhao/clock/archive/4231fdd520d889533bcc83506462b9972a095197.tar.gz"
  sha256 "500b493f2bc468c21cc447d8076be43790c2e4585afa48c093e84f9ffe67ae6b"
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
