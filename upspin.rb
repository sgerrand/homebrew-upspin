class Upspin < Formula
  desc "Framework for naming everyone's everything."
  homepage "https://upspin.io"

  head "https://github.com/upspin/upspin.git"

  devel do
    url "https://upspin.io/dl/upspin.darwin_amd64.tar.gz"
    sha256 "f9ac7786146d985e815a73a825c3b0fdcd046f8d2f81f06d6f0887f74068188a"
    version "845b5d438bee492bc255b8f5fdec21de2b8e09b2"
  end

  def install
    bin.install ["cacheserver", "upspin", "upspinfs", "upspin-ui"]
  end

  test do
    # Upspin requires a user to be configured and network availablity.
    # Without that, this is a basic check to verify the command runs.
    assert_match %r{^Usage of upspin}, shell_output("#{bin}/upspin -help 2>&1", 2)
    assert_match %r{^Build time: Jan  9 23:03:47 2018 UTC\nGit hash:   845b5d438bee492bc255b8f5fdec21de2b8e09b2\n}, shell_output("#{bin}/upspin -version 2>&1", 2)
  end
end
