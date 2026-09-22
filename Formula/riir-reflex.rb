# Manifest-only formula for the binary-only riir-reflex distribution
# (katgpt-rs Plan 606). Generated from the release's SHA256SUMS — do not edit
# by hand.
class RiirReflex < Formula
  desc "Modelless localhost decision engine — typed decisions, calibrated, abstains"
  homepage "https://github.com/gist-rs/reflex"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.0/riir-reflex-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "323f08a39e00f7ab9086326e20a2f04f9f2c24c03afc8ccf1dcebf99a4cb2851"
    else
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.0/riir-reflex-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "eda5f0352354d9cc21a174e62a94a7ddd9a5acbdd4f239ca81c3a2085986b8c6"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.0/riir-reflex-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "64e5d74a9a5c32a626ba8cc213aa683554e492a60c0301443cd21d47f127b246"
    else
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.0/riir-reflex-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "64782daa6b2afc9db3f28a96c23c0ab72f6e415b290538230c511490d56ee471"
    end
  end

  def install
    bin.install "riir-reflex"
  end
end
