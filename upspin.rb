class Upspin < Formula
  desc "Framework for naming everyone's everything."
  homepage "https://upspin.io"

  head "https://github.com/upspin/upspin.git"

  devel do
    url "https://upspin.io/dl/upspin.darwin_amd64.tar.gz"
    sha256 "a9e0bdf6058440678dcf6874a6a9a8007cbc5773a087e44eccb9ad566ca5cab0"
    version "a9e0bdf6058440678dcf6874a6a9a8007cbc5773a087e44eccb9ad566ca5cab0"
  end

  def install
    bin.install ["cacheserver", "upspin", "upspinfs", "upspin-ui"]
  end

  test do
    # Upspin requires a user to be configured and network availablity.
    # Without that, this is a basic check to verify the command runs.
    assert_match %r{^Usage of upspin}, shell_output("#{bin}/upspin -help 2>&1", 2)
    assert_match %r{^Build time: Dec  1 19:23:12 2017 UTC\nGit hash:   3d915eafc9821e06a0d90b9f803d5426e3d4c9d4\n}, shell_output("#{bin}/upspin -version 2>&1", 2)
  end
end
