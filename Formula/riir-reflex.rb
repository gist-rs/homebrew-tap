# Manifest-only formula for the binary-only riir-reflex distribution
# (katgpt-rs Plan 606). Generated from the release's SHA256SUMS — do not edit
# by hand.
class RiirReflex < Formula
  desc "Modelless localhost decision engine — typed decisions, calibrated, abstains"
  homepage "https://github.com/gist-rs/reflex"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.1/riir-reflex-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "7cddc96cecd8090782e7ebc92bd19c7940f37901731ae17818b9d6c5462a68af"
    else
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.1/riir-reflex-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "4aefbf7d2502503601f0dfa065e4e85afc7f685c64e26329a92b0984f56a643b"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.1/riir-reflex-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "33c0b160a5e32b30dde0543bd2bc8b678599e4eb6d59d40d97d073417576fc4c"
    else
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.1/riir-reflex-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "082b6645d42b15b32116d37cfd7fb73c8c00bbd736cea0423b8157a6d73b4024"
    end
  end

  def install
    bin.install "riir-reflex"
  end
end
