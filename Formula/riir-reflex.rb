# Manifest-only formula for the binary-only riir-reflex distribution
# (katgpt-rs Plan 606). Generated from the release's SHA256SUMS — do not edit
# by hand. The installed COMMAND is `reflex` (the bin rename shipped in
# v0.2.2) while the formula name stays `riir-reflex`.
class RiirReflex < Formula
  desc "Modelless localhost decision engine — typed decisions, calibrated, abstains"
  homepage "https://github.com/gist-rs/reflex"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.4/reflex-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "65fecfdd401fc77e15d1745ee95a694a6fbc603c7121c0e265a4808f8751df2f"
    else
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.4/reflex-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "e9365aa3bdfefb771ac0e000ddd145bcc0bf90456a3329c1f47d9c1344b39a0a"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.4/reflex-v0.2.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "638f99652ae8cc014d18f568acd2d6ddd15bd6611ec22c5ae5e2aecfcec65357"
    else
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.4/reflex-v0.2.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "30ad90eeaf6b476a84b4d9e959fd9e0f9cf9464708fd9355f30abf792169c322"
    end
  end

  def install
    bin.install "reflex"
  end
end
