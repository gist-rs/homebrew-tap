# Manifest-only formula for the binary-only riir-reflex distribution
# (katgpt-rs Plan 606). Generated from the release's SHA256SUMS — do not edit
# by hand. The installed COMMAND is `reflex` (the bin rename shipped in
# v0.2.2) while the formula name stays `riir-reflex`.
class RiirReflex < Formula
  desc "Modelless localhost decision engine — typed decisions, calibrated, abstains"
  homepage "https://github.com/gist-rs/reflex"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.3/reflex-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "9318cf6aae3ef89c7cb385f2d6e90911c151029c55e06c4f97ef18d444eb45d6"
    else
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.3/reflex-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "7e2457ee91301e8e70d0a9686928ff912910ed9f2065898809efad6dee0b34ce"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.3/reflex-v0.2.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5379455ea1bcefe96d4a987c4d18a37bfad47a6a592cfd4ac235080089627ca9"
    else
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.3/reflex-v0.2.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "72c9671ca947636fd128680e8e09d68efffa9248728c465e0295133bf9e3dd9c"
    end
  end

  def install
    bin.install "reflex"
  end
end
