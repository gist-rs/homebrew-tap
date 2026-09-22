# Manifest-only formula for the binary-only riir-reflex distribution
# (katgpt-rs Plan 606). Generated from the release's SHA256SUMS — do not edit
# by hand.
class RiirReflex < Formula
  desc "Modelless localhost decision engine — typed decisions, calibrated, abstains"
  homepage "https://github.com/gist-rs/reflex"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gist-rs/reflex/releases/download/v0.1.0/riir-reflex-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "046fa20cc9a15e63e3bff2600999bb928b56857dd7ce72ba041b10e62ad9869c"
    else
      url "https://github.com/gist-rs/reflex/releases/download/v0.1.0/riir-reflex-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0585b64b5e398fa622f862fed9418428d3576a0f01824a11bf8acb0cead7c781"
    end
  end

  def install
    bin.install "riir-reflex"
  end
end
