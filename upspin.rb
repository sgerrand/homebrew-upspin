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
    # Upspin requires a user to be configured and network availablity.
    # Without that, this is a basic check to verify the command runs.
    assert_match %r{^Usage of upspin}, shell_output("#{bin}/upspin -help 2>&1", 2)
    assert_match %r{^Build time: Oct 27 21:33:19 UTC\nGit hash:   24e3a932a78985a544d207a704701ad8f7821388\n}, shell_output("#{bin}/upspin -version 2>&1", 2)
  end
end
