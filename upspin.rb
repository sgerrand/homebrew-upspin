class Upspin < Formula
  desc "Framework for naming everyone's everything."
  homepage "https://upspin.io"

  head "https://github.com/upspin/upspin.git"

  devel do
    url "https://upspin.io/dl/upspin.darwin_amd64.tar.gz"
    sha256 "d552d88ddef99b250f2ab2217a1556782dbdb2f4cf5a4b776737f12ea18426fd"
  end

  def install
    bin.install ["cacheserver", "upspin", "upspinfs", "upspin-ui"]
  end

  test do
    system "#{bin}/upspin"
  end
end
