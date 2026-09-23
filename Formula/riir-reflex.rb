# Manifest-only formula for the binary-only riir-reflex distribution
# (katgpt-rs Plan 606). Generated from the release's SHA256SUMS — do not edit
# by hand. The installed COMMAND is `reflex` (the bin rename shipped in
# v0.2.2) while the formula name stays `riir-reflex`.
class RiirReflex < Formula
  desc "Modelless localhost decision engine — typed decisions, calibrated, abstains"
  homepage "https://github.com/gist-rs/reflex"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.2/reflex-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "64174c44a17b5bc6f30121a869c5727d2510f08b38d2f0b657419d93c29cf89b"
    else
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.2/reflex-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "191f3e3c851e7e0979ac27a5fc3fc9c89812fc7cafe4946fd1725b577c6d8648"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.2/reflex-v0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3dd48153a31e4f69990b06726c0afd2d1c24cf2bba386dfe5177e18b4b8f8fd7"
    else
      url "https://github.com/gist-rs/reflex/releases/download/v0.2.2/reflex-v0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6e018b971fe8ab55b8d49882d4debe6f778af3b236d684edf91897609e227f9e"
    end
  end

  def install
    bin.install "reflex"
  end
end
