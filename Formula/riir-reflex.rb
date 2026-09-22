# Manifest-only formula for the binary-only riir-reflex distribution
# (katgpt-rs Plan 606). Generated from the release's SHA256SUMS — do not edit
# by hand.
class RiirReflex < Formula
  desc "Modelless localhost decision engine — typed decisions, calibrated, abstains"
  homepage "https://github.com/gist-rs/reflex"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gist-rs/reflex/releases/download/v0.1.1/riir-reflex-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "dac343ebdbfe0b55b8e07873331eb5bfb5f8c7ae52ca24272233f70089d59c4d"
    else
      url "https://github.com/gist-rs/reflex/releases/download/v0.1.1/riir-reflex-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "f034bab7361c60dfb5ef366234a0a3f7c358510a81d640e91e3333a368ba0772"
    end
  end

  def install
    bin.install "riir-reflex"
  end
end
