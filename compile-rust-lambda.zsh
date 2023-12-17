RUST_TARGET="x86_64-unknown-linux-musl" # Set this to aarch64 or x86_64 -unknown-linux-gnu for ARM or x86 functions.

al2build() {
  docker run --rm --user "$(id -u)":"$(id -g)" \
  -v "${PWD}":/workspace -w /workspace \
  ghcr.io/cargo-lambda/cargo-lambda \
  cargo lambda build --release --target ${RUST_TARGET} --output-format zip
}

al2build