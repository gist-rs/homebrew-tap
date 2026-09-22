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
      sha256 "a154697e3c7b988b07152f455c6794d48ceef2a6f6c069fd69f4be9df607b723"
    else
      url "https://github.com/gist-rs/reflex/releases/download/v0.1.0/riir-reflex-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0a13eb2b244236678302c7edc3b502d0cde14e94c57cafc2483202f2d26b48b7"
    end
  end

  def install
    bin.install "riir-reflex"
  end
end
